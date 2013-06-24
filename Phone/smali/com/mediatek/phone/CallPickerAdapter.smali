.class public Lcom/mediatek/phone/CallPickerAdapter;
.super Landroid/widget/BaseAdapter;
.source "CallPickerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/phone/CallPickerAdapter$1;,
        Lcom/mediatek/phone/CallPickerAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field mContext:Landroid/content/Context;

.field private mFirstCallerInfoName:Ljava/lang/String;

.field private mFirstSimColor:I

.field mItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/Call;",
            ">;"
        }
    .end annotation
.end field

.field private mOperatorNameFirstCall:Ljava/lang/String;

.field private mOperatorNameSecondCall:Ljava/lang/String;

.field private mSecondCallerInfoName:Ljava/lang/String;

.field private mSecondSimColor:I

.field private mSimDarkBorderMap:[I

.field private mSimIndicatorPaddingLeft:I

.field private mSimIndicatorPaddingRight:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 2
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/Call;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 43
    .local p2, items:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/Call;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 36
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/mediatek/phone/CallPickerAdapter;->mSimDarkBorderMap:[I

    .line 44
    iput-object p1, p0, Lcom/mediatek/phone/CallPickerAdapter;->mContext:Landroid/content/Context;

    .line 45
    iput-object p2, p0, Lcom/mediatek/phone/CallPickerAdapter;->mItems:Ljava/util/List;

    .line 46
    iget-object v0, p0, Lcom/mediatek/phone/CallPickerAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c004d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/mediatek/phone/CallPickerAdapter;->mSimIndicatorPaddingLeft:I

    .line 47
    iget-object v0, p0, Lcom/mediatek/phone/CallPickerAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0026

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/mediatek/phone/CallPickerAdapter;->mSimIndicatorPaddingRight:I

    .line 48
    return-void

    .line 36
    :array_0
    .array-data 0x4
        0xaet 0x0t 0x2t 0x7ft
        0xb1t 0x0t 0x2t 0x7ft
        0xaft 0x0t 0x2t 0x7ft
        0xb2t 0x0t 0x2t 0x7ft
    .end array-data
.end method

.method private tripHyphen(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "number"

    .prologue
    .line 152
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 163
    .end local p1
    :goto_0
    return-object p1

    .line 155
    .restart local p1
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 157
    .local v2, sb:Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 158
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 159
    .local v0, c:C
    const/16 v3, 0x2d

    if-eq v0, v3, :cond_1

    const/16 v3, 0x20

    if-eq v0, v3, :cond_1

    .line 160
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 157
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 163
    .end local v0           #c:C
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method private updateCallOperatorBackground(Lcom/android/internal/telephony/Call;Landroid/widget/TextView;I)V
    .locals 3
    .parameter "call"
    .parameter "operator"
    .parameter "simColor"

    .prologue
    const/4 v2, 0x0

    .line 183
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 184
    const v0, 0x7f0200b2

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 187
    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 188
    iget v0, p0, Lcom/mediatek/phone/CallPickerAdapter;->mSimIndicatorPaddingLeft:I

    iget v1, p0, Lcom/mediatek/phone/CallPickerAdapter;->mSimIndicatorPaddingRight:I

    invoke-virtual {p2, v0, v2, v1, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 190
    :cond_1
    return-void
.end method


# virtual methods
.method public getCallerInfoName(I)Ljava/lang/String;
    .locals 1
    .parameter "position"

    .prologue
    .line 125
    if-nez p1, :cond_0

    .line 126
    iget-object v0, p0, Lcom/mediatek/phone/CallPickerAdapter;->mFirstCallerInfoName:Ljava/lang/String;

    .line 128
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/mediatek/phone/CallPickerAdapter;->mSecondCallerInfoName:Ljava/lang/String;

    goto :goto_0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/mediatek/phone/CallPickerAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/mediatek/phone/CallPickerAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 60
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getOperatorColor(I)I
    .locals 1
    .parameter "position"

    .prologue
    .line 138
    if-nez p1, :cond_0

    .line 139
    iget v0, p0, Lcom/mediatek/phone/CallPickerAdapter;->mFirstSimColor:I

    .line 141
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/mediatek/phone/CallPickerAdapter;->mSecondSimColor:I

    goto :goto_0
.end method

.method public getOperatorName(I)Ljava/lang/String;
    .locals 1
    .parameter "position"

    .prologue
    .line 112
    if-nez p1, :cond_0

    .line 113
    iget-object v0, p0, Lcom/mediatek/phone/CallPickerAdapter;->mOperatorNameFirstCall:Ljava/lang/String;

    .line 115
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/mediatek/phone/CallPickerAdapter;->mOperatorNameSecondCall:Ljava/lang/String;

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v8, 0x0

    .line 64
    move-object v6, p2

    .line 65
    .local v6, view:Landroid/view/View;
    const/4 v3, 0x0

    .line 66
    .local v3, holder:Lcom/mediatek/phone/CallPickerAdapter$ViewHolder;
    if-nez v6, :cond_0

    .line 67
    iget-object v7, p0, Lcom/mediatek/phone/CallPickerAdapter;->mContext:Landroid/content/Context;

    invoke-static {v7}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    .line 68
    .local v4, inflater:Landroid/view/LayoutInflater;
    new-instance v3, Lcom/mediatek/phone/CallPickerAdapter$ViewHolder;

    .end local v3           #holder:Lcom/mediatek/phone/CallPickerAdapter$ViewHolder;
    invoke-direct {v3, p0, v8}, Lcom/mediatek/phone/CallPickerAdapter$ViewHolder;-><init>(Lcom/mediatek/phone/CallPickerAdapter;Lcom/mediatek/phone/CallPickerAdapter$1;)V

    .line 69
    .restart local v3       #holder:Lcom/mediatek/phone/CallPickerAdapter$ViewHolder;
    const v7, 0x7f040009

    invoke-virtual {v4, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 70
    const v7, 0x7f08001a

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, v3, Lcom/mediatek/phone/CallPickerAdapter$ViewHolder;->mDisplayName:Landroid/widget/TextView;

    .line 71
    const v7, 0x7f080019

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, v3, Lcom/mediatek/phone/CallPickerAdapter$ViewHolder;->mOperator:Landroid/widget/TextView;

    .line 72
    const v7, 0x7f08001b

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, v3, Lcom/mediatek/phone/CallPickerAdapter$ViewHolder;->mPhoneNumber:Landroid/widget/TextView;

    .line 73
    invoke-virtual {v6, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 76
    .end local v4           #inflater:Landroid/view/LayoutInflater;
    :cond_0
    invoke-virtual {v6}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    .end local v3           #holder:Lcom/mediatek/phone/CallPickerAdapter$ViewHolder;
    check-cast v3, Lcom/mediatek/phone/CallPickerAdapter$ViewHolder;

    .line 77
    .restart local v3       #holder:Lcom/mediatek/phone/CallPickerAdapter$ViewHolder;
    iget-object v7, p0, Lcom/mediatek/phone/CallPickerAdapter;->mItems:Ljava/util/List;

    invoke-interface {v7, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/Call;

    .line 79
    .local v1, call:Lcom/android/internal/telephony/Call;
    invoke-virtual {p0, p1}, Lcom/mediatek/phone/CallPickerAdapter;->getOperatorName(I)Ljava/lang/String;

    move-result-object v5

    .line 80
    .local v5, operatorName:Ljava/lang/String;
    invoke-virtual {p0, p1}, Lcom/mediatek/phone/CallPickerAdapter;->getCallerInfoName(I)Ljava/lang/String;

    move-result-object v2

    .line 81
    .local v2, displayName:Ljava/lang/String;
    const/4 v0, 0x0

    .line 82
    .local v0, address:Ljava/lang/String;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 83
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 86
    :cond_1
    if-eqz v0, :cond_4

    if-eqz v2, :cond_4

    invoke-direct {p0, v2}, Lcom/mediatek/phone/CallPickerAdapter;->tripHyphen(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 87
    iget-object v7, v3, Lcom/mediatek/phone/CallPickerAdapter$ViewHolder;->mDisplayName:Landroid/widget/TextView;

    invoke-virtual {v7, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    iget-object v7, v3, Lcom/mediatek/phone/CallPickerAdapter$ViewHolder;->mPhoneNumber:Landroid/widget/TextView;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 98
    :cond_2
    :goto_0
    if-eqz v5, :cond_3

    .line 99
    iget-object v7, v3, Lcom/mediatek/phone/CallPickerAdapter$ViewHolder;->mOperator:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Lcom/mediatek/phone/CallPickerAdapter;->getOperatorColor(I)I

    move-result v8

    invoke-direct {p0, v1, v7, v8}, Lcom/mediatek/phone/CallPickerAdapter;->updateCallOperatorBackground(Lcom/android/internal/telephony/Call;Landroid/widget/TextView;I)V

    .line 100
    iget-object v7, v3, Lcom/mediatek/phone/CallPickerAdapter$ViewHolder;->mOperator:Landroid/widget/TextView;

    invoke-virtual {v7, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 103
    :cond_3
    return-object v6

    .line 90
    :cond_4
    if-eqz v2, :cond_5

    .line 91
    iget-object v7, v3, Lcom/mediatek/phone/CallPickerAdapter$ViewHolder;->mDisplayName:Landroid/widget/TextView;

    invoke-virtual {v7, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    :cond_5
    if-eqz v0, :cond_2

    .line 94
    iget-object v7, v3, Lcom/mediatek/phone/CallPickerAdapter$ViewHolder;->mPhoneNumber:Landroid/widget/TextView;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 95
    iget-object v7, v3, Lcom/mediatek/phone/CallPickerAdapter$ViewHolder;->mPhoneNumber:Landroid/widget/TextView;

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public setCallerInfoName(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "callerName1"
    .parameter "callerName2"

    .prologue
    .line 120
    iput-object p1, p0, Lcom/mediatek/phone/CallPickerAdapter;->mFirstCallerInfoName:Ljava/lang/String;

    .line 121
    iput-object p2, p0, Lcom/mediatek/phone/CallPickerAdapter;->mSecondCallerInfoName:Ljava/lang/String;

    .line 122
    return-void
.end method

.method public setOperatorColor(II)V
    .locals 0
    .parameter "simColor1"
    .parameter "simColor2"

    .prologue
    .line 133
    iput p1, p0, Lcom/mediatek/phone/CallPickerAdapter;->mFirstSimColor:I

    .line 134
    iput p2, p0, Lcom/mediatek/phone/CallPickerAdapter;->mSecondSimColor:I

    .line 135
    return-void
.end method

.method public setOperatorName(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "operator1"
    .parameter "operator2"

    .prologue
    .line 107
    iput-object p1, p0, Lcom/mediatek/phone/CallPickerAdapter;->mOperatorNameFirstCall:Ljava/lang/String;

    .line 108
    iput-object p2, p0, Lcom/mediatek/phone/CallPickerAdapter;->mOperatorNameSecondCall:Ljava/lang/String;

    .line 109
    return-void
.end method
