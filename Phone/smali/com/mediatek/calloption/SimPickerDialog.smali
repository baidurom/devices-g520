.class public abstract Lcom/mediatek/calloption/SimPickerDialog;
.super Ljava/lang/Object;
.source "SimPickerDialog.java"


# static fields
.field public static final DEFAULT_SIM_NOT_SET:I = -0x5


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 23
    return-void
.end method

.method public static create(Landroid/content/Context;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Lcom/mediatek/calloption/SimPickerAdapter;Z)Landroid/app/Dialog;
    .locals 2
    .parameter "context"
    .parameter "title"
    .parameter "listener"
    .parameter "simPickerAdpater"
    .parameter "addInternet"

    .prologue
    .line 43
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 45
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    invoke-static {p0, p4}, Lcom/mediatek/calloption/SimPickerDialog;->createItemHolder(Landroid/content/Context;Z)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p3, v1}, Lcom/mediatek/calloption/SimPickerAdapter;->setItems(Ljava/util/List;)V

    .line 46
    const/4 v1, -0x1

    invoke-virtual {v0, p3, v1, p2}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 48
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    return-object v1
.end method

.method protected static createItemHolder(Landroid/content/Context;Z)Ljava/util/List;
    .locals 13
    .parameter "context"
    .parameter "addInternet"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/calloption/SimPickerAdapter$ItemHolder;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 58
    invoke-static {p0}, Landroid/provider/Telephony$SIMInfo;->getInsertedSIMList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v6

    .line 59
    .local v6, simInfos:Ljava/util/List;,"Ljava/util/List<Landroid/provider/Telephony$SIMInfo;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 60
    .local v3, itemHolders:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/mediatek/calloption/SimPickerAdapter$ItemHolder;>;"
    const/4 v8, 0x0

    .line 67
    .local v8, temp:Lcom/mediatek/calloption/SimPickerAdapter$ItemHolder;
    const/4 v2, 0x0

    .line 68
    .local v2, index:I
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/provider/Telephony$SIMInfo;

    .line 69
    .local v5, simInfo:Landroid/provider/Telephony$SIMInfo;
    new-instance v8, Lcom/mediatek/calloption/SimPickerAdapter$ItemHolder;

    .end local v8           #temp:Lcom/mediatek/calloption/SimPickerAdapter$ItemHolder;
    invoke-direct {v8, v5, v11}, Lcom/mediatek/calloption/SimPickerAdapter$ItemHolder;-><init>(Ljava/lang/Object;I)V

    .line 70
    .restart local v8       #temp:Lcom/mediatek/calloption/SimPickerAdapter$ItemHolder;
    if-nez v2, :cond_0

    .line 71
    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 81
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 73
    :cond_0
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v9

    add-int/lit8 v4, v9, -0x1

    .line 74
    .local v4, lastPos:I
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/mediatek/calloption/SimPickerAdapter$ItemHolder;

    iget-object v7, v9, Lcom/mediatek/calloption/SimPickerAdapter$ItemHolder;->mData:Ljava/lang/Object;

    check-cast v7, Landroid/provider/Telephony$SIMInfo;

    .line 75
    .local v7, temInfo:Landroid/provider/Telephony$SIMInfo;
    iget v9, v5, Landroid/provider/Telephony$SIMInfo;->mSlot:I

    iget v10, v7, Landroid/provider/Telephony$SIMInfo;->mSlot:I

    if-ge v9, v10, :cond_1

    .line 76
    invoke-virtual {v3, v4, v8}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_1

    .line 78
    :cond_1
    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 84
    .end local v4           #lastPos:I
    .end local v5           #simInfo:Landroid/provider/Telephony$SIMInfo;
    .end local v7           #temInfo:Landroid/provider/Telephony$SIMInfo;
    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "enable_internet_call_value"

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 86
    .local v0, enabled:I
    if-eqz p1, :cond_3

    invoke-static {p0}, Landroid/net/sip/SipManager;->isVoipSupported(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_3

    if-ne v0, v12, :cond_3

    .line 87
    new-instance v8, Lcom/mediatek/calloption/SimPickerAdapter$ItemHolder;

    .end local v8           #temp:Lcom/mediatek/calloption/SimPickerAdapter$ItemHolder;
    const-string v9, "Internet"

    invoke-direct {v8, v9, v12}, Lcom/mediatek/calloption/SimPickerAdapter$ItemHolder;-><init>(Ljava/lang/Object;I)V

    .line 89
    .restart local v8       #temp:Lcom/mediatek/calloption/SimPickerAdapter$ItemHolder;
    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 98
    :cond_3
    return-object v3
.end method


# virtual methods
.method protected abstract getSimPickerAdapter(Landroid/content/Context;Ljava/util/List;J)Lcom/mediatek/calloption/SimPickerAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/calloption/SimPickerAdapter$ItemHolder;",
            ">;J)",
            "Lcom/mediatek/calloption/SimPickerAdapter;"
        }
    .end annotation
.end method
