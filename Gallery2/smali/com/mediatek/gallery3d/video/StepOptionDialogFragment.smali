.class public Lcom/mediatek/gallery3d/video/StepOptionDialogFragment;
.super Landroid/app/DialogFragment;
.source "StepOptionDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# static fields
.field private static final KEY_DEFAULT_SELECT:Ljava/lang/String; = "nowSelect"

.field private static final KEY_ITEM_ARRAY:Ljava/lang/String; = "itemArray"

.field private static final KEY_TITLE:Ljava/lang/String; = "title"


# instance fields
.field private mClickListener:Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 16
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/gallery3d/video/StepOptionDialogFragment;->mClickListener:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method

.method public static newInstance([III)Lcom/mediatek/gallery3d/video/StepOptionDialogFragment;
    .locals 3
    .parameter "itemArrayID"
    .parameter "titleID"
    .parameter "nowSelect"

    .prologue
    .line 33
    new-instance v1, Lcom/mediatek/gallery3d/video/StepOptionDialogFragment;

    invoke-direct {v1}, Lcom/mediatek/gallery3d/video/StepOptionDialogFragment;-><init>()V

    .line 34
    .local v1, frag:Lcom/mediatek/gallery3d/video/StepOptionDialogFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 35
    .local v0, args:Landroid/os/Bundle;
    const-string v2, "itemArray"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 36
    const-string v2, "title"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 37
    const-string v2, "nowSelect"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 38
    invoke-virtual {v1, v0}, Lcom/mediatek/gallery3d/video/StepOptionDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 39
    return-object v1
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/mediatek/gallery3d/video/StepOptionDialogFragment;->mClickListener:Landroid/content/DialogInterface$OnClickListener;

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/mediatek/gallery3d/video/StepOptionDialogFragment;->mClickListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-interface {v0, p1, p2}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    .line 72
    :cond_0
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 11
    .parameter "savedInstanceState"

    .prologue
    .line 47
    invoke-virtual {p0}, Lcom/mediatek/gallery3d/video/StepOptionDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 48
    .local v0, args:Landroid/os/Bundle;
    const-string v8, "title"

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {p0, v8}, Lcom/mediatek/gallery3d/video/StepOptionDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 49
    .local v7, title:Ljava/lang/String;
    const-string v8, "itemArray"

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v5

    .line 50
    .local v5, itemArrayID:[I
    array-length v1, v5

    .line 51
    .local v1, arraySize:I
    new-array v4, v1, [Ljava/lang/CharSequence;

    .line 52
    .local v4, itemArray:[Ljava/lang/CharSequence;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v1, :cond_0

    .line 53
    aget v8, v5, v3

    invoke-virtual {p0, v8}, Lcom/mediatek/gallery3d/video/StepOptionDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v3

    .line 52
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 56
    :cond_0
    const/4 v2, 0x0

    .line 57
    .local v2, builder:Landroid/app/AlertDialog$Builder;
    const-string v8, "nowSelect"

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    .line 58
    .local v6, nowSelect:I
    new-instance v2, Landroid/app/AlertDialog$Builder;

    .end local v2           #builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0}, Lcom/mediatek/gallery3d/video/StepOptionDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-direct {v2, v8}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 59
    .restart local v2       #builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v2, v7}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    invoke-virtual {v8, v4, v6, p0}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    const/high16 v9, 0x104

    invoke-virtual {p0, v9}, Lcom/mediatek/gallery3d/video/StepOptionDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 61
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v8

    return-object v8
.end method

.method public setOnClickListener(Landroid/content/DialogInterface$OnClickListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 81
    iput-object p1, p0, Lcom/mediatek/gallery3d/video/StepOptionDialogFragment;->mClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 82
    return-void
.end method
