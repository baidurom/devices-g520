.class public Lcom/mediatek/phone/calloption/PhoneInternationalDialogHandler;
.super Lcom/mediatek/calloption/InternationalDialogHandler;
.source "PhoneInternationalDialogHandler.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PhoneInternationalNumberPrefixItemHandler"


# direct methods
.method public constructor <init>(Landroid/content/Context;ILcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;)V
    .locals 2
    .parameter "context"
    .parameter "type"
    .parameter "prefixInfo"

    .prologue
    .line 23
    invoke-direct {p0, p1, p2, p3}, Lcom/mediatek/calloption/InternationalDialogHandler;-><init>(Landroid/content/Context;ILcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;)V

    .line 24
    new-instance v0, Lcom/mediatek/phone/calloption/PhoneInternationalCountrySelectDialogHandler;

    iget-object v1, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcom/mediatek/phone/calloption/PhoneInternationalCountrySelectDialogHandler;-><init>(Landroid/content/Context;Lcom/mediatek/calloption/InternationalCountrySelectDialogHandler$OnCountrySelectListener;)V

    iput-object v0, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mCountrySelectDialogHandler:Lcom/mediatek/calloption/InternationalCountrySelectDialogHandler;

    .line 25
    return-void
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 302
    const-string v0, "PhoneInternationalNumberPrefixItemHandler"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    return-void
.end method


# virtual methods
.method protected createAreaInputSingleSelectDialogItems()Landroid/view/View;
    .locals 12

    .prologue
    .line 141
    iget-object v0, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mContext:Landroid/content/Context;

    const v8, 0x7f0d015e

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mPrefixInfo:Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;

    iget-object v11, v11, Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;->mCountryName:Ljava/lang/String;

    aput-object v11, v9, v10

    invoke-virtual {v0, v8, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 144
    .local v1, description1:Ljava/lang/String;
    iget-object v0, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mContext:Landroid/content/Context;

    const v8, 0x7f0d0161

    invoke-virtual {v0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 145
    .local v2, editText:Ljava/lang/String;
    iget-object v0, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mContext:Landroid/content/Context;

    const v8, 0x7f0d016b

    invoke-virtual {v0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 147
    .local v3, description2:Ljava/lang/String;
    iget-object v0, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mContext:Landroid/content/Context;

    const v8, 0x7f0d0166

    invoke-virtual {v0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 148
    .local v4, messageYes:Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "+"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v8, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mPrefixInfo:Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;

    iget-object v8, v8, Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;->mCountryCode:Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v8, " ("

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v8, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mContext:Landroid/content/Context;

    const v9, 0x7f0d0169

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v8, ") "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v8, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mPrefixInfo:Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;

    iget-object v8, v8, Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;->mNumberOrigin:Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 151
    .local v5, numberYes:Ljava/lang/String;
    iget-object v0, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mContext:Landroid/content/Context;

    const v8, 0x7f0d0167

    invoke-virtual {v0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 152
    .local v6, messageNo:Ljava/lang/String;
    iget-object v0, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mPrefixInfo:Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;

    iget-object v0, v0, Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;->mNumberOrigin:Ljava/lang/String;

    iget-object v8, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mPrefixInfo:Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;

    iget-object v8, v8, Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;->mCurrentCountryISO:Ljava/lang/String;

    invoke-static {v0, v8}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 153
    .local v7, numberNo:Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mPrefixInfo:Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;

    iget-object v7, v0, Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;->mNumberOrigin:Ljava/lang/String;

    :cond_0
    move-object v0, p0

    .line 156
    invoke-virtual/range {v0 .. v7}, Lcom/mediatek/phone/calloption/PhoneInternationalDialogHandler;->createEditTextSingleSelectItems(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected createButtonEditTextItems(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;
    .locals 6
    .parameter "description1"
    .parameter "buttonText"
    .parameter "description2"
    .parameter "editText"
    .parameter "isEditShow"
    .parameter "numberMessage"
    .parameter "number"
    .parameter "textAreaCode"
    .parameter "textInputCodeHere"

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 189
    iput-object p7, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mOriginSuggestNumber:Ljava/lang/String;

    .line 190
    iput-object p8, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mTextAreaCode:Ljava/lang/String;

    .line 191
    iput-object p9, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mTextInputCodeHere:Ljava/lang/String;

    .line 193
    iget-object v2, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mContext:Landroid/content/Context;

    const-string v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 195
    .local v1, inflater:Landroid/view/LayoutInflater;
    const v2, 0x7f040021

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 197
    .local v0, dialogView:Landroid/view/View;
    const v2, 0x7f080096

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mDescriptionText:Landroid/widget/TextView;

    .line 198
    iget-object v2, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mDescriptionText:Landroid/widget/TextView;

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 200
    const v2, 0x7f080037

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mCountrySelectButton:Landroid/widget/Button;

    .line 201
    iget-object v2, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mCountrySelectButton:Landroid/widget/Button;

    invoke-virtual {v2, p2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 202
    iget-object v2, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mCountrySelectButton:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 204
    const v2, 0x7f080097

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mAreaCodeDescription:Landroid/widget/TextView;

    .line 205
    iget-object v2, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mAreaCodeDescription:Landroid/widget/TextView;

    invoke-virtual {v2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 207
    const v2, 0x7f080098

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mInputAreaEditText:Landroid/widget/EditText;

    .line 208
    iget-object v2, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mInputAreaEditText:Landroid/widget/EditText;

    invoke-virtual {v2, p4}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 209
    iget-object v2, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mInputAreaEditText:Landroid/widget/EditText;

    invoke-virtual {v2, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 211
    if-eqz p5, :cond_0

    .line 212
    iget-object v2, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mAreaCodeDescription:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 213
    iget-object v2, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mInputAreaEditText:Landroid/widget/EditText;

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setVisibility(I)V

    .line 219
    :goto_0
    const v2, 0x7f080099

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mMessageYesText:Landroid/widget/TextView;

    .line 220
    iget-object v2, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mMessageYesText:Landroid/widget/TextView;

    invoke-virtual {v2, p6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 222
    const v2, 0x7f08009a

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mSuggestNumberText:Landroid/widget/TextView;

    .line 223
    iget-object v2, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mSuggestNumberText:Landroid/widget/TextView;

    invoke-virtual {v2, p7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 225
    return-object v0

    .line 215
    :cond_0
    iget-object v2, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mAreaCodeDescription:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 216
    iget-object v2, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mInputAreaEditText:Landroid/widget/EditText;

    invoke-virtual {v2, v5}, Landroid/widget/EditText;->setVisibility(I)V

    goto :goto_0
.end method

.method protected createCountryAreaSingleSelectDialogItems()Landroid/view/View;
    .locals 11

    .prologue
    .line 46
    iget-object v0, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mContext:Landroid/content/Context;

    const v6, 0x7f0d015c

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mPrefixInfo:Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;

    iget-object v9, v9, Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;->mAreaName:Ljava/lang/String;

    aput-object v9, v7, v8

    const/4 v8, 0x1

    iget-object v9, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mPrefixInfo:Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;

    iget-object v9, v9, Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;->mCountryName:Ljava/lang/String;

    aput-object v9, v7, v8

    const/4 v8, 0x2

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mPrefixInfo:Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;

    iget-object v10, v10, Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;->mCountryCode:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mPrefixInfo:Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;

    iget-object v10, v10, Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;->mAreaCode:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v0, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 49
    .local v1, description:Ljava/lang/String;
    iget-object v0, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mContext:Landroid/content/Context;

    const v6, 0x7f0d0166

    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 50
    .local v2, messageYes:Ljava/lang/String;
    iget-object v0, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mContext:Landroid/content/Context;

    const v6, 0x7f0d0167

    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 51
    .local v4, messageNo:Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "+"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v6, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mPrefixInfo:Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;

    iget-object v6, v6, Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;->mCountryCode:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v6, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mPrefixInfo:Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;

    iget-object v6, v6, Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;->mAreaCode:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v6, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mPrefixInfo:Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;

    iget-object v6, v6, Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;->mNumberSubscriber:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v6, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mPrefixInfo:Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;

    iget-object v6, v6, Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;->mSuggestCountryISO:Ljava/lang/String;

    invoke-static {v0, v6}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 54
    .local v3, numberYes:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "+"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v6, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mPrefixInfo:Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;

    iget-object v6, v6, Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;->mCountryCode:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v6, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mPrefixInfo:Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;

    iget-object v6, v6, Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;->mAreaCode:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v6, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mPrefixInfo:Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;

    iget-object v6, v6, Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;->mNumberSubscriber:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 57
    :cond_0
    iget-object v0, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mPrefixInfo:Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;

    iget-object v0, v0, Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;->mNumberOrigin:Ljava/lang/String;

    iget-object v6, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mPrefixInfo:Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;

    iget-object v6, v6, Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;->mCurrentCountryISO:Ljava/lang/String;

    invoke-static {v0, v6}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 58
    .local v5, numberNo:Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 59
    iget-object v0, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mPrefixInfo:Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;

    iget-object v5, v0, Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;->mNumberOrigin:Ljava/lang/String;

    :cond_1
    move-object v0, p0

    .line 61
    invoke-virtual/range {v0 .. v5}, Lcom/mediatek/phone/calloption/PhoneInternationalDialogHandler;->createSingleSelectItems(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected createCountrySelectAreaInputDialogItems()Landroid/view/View;
    .locals 10

    .prologue
    const v8, 0x7f0d0169

    const v9, 0x7f0d0161

    .line 103
    iget-object v0, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mContext:Landroid/content/Context;

    const v5, 0x7f0d015a

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 104
    .local v1, description:Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mPrefixInfo:Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;

    iget-object v5, v5, Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;->mCountryName:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "(+"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v5, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mPrefixInfo:Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;

    iget-object v5, v5, Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;->mCountryCode:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ")"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 105
    .local v2, messageButton:Ljava/lang/String;
    iget-object v0, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mContext:Landroid/content/Context;

    const v5, 0x7f0d0160

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 106
    .local v3, editTextMessage:Ljava/lang/String;
    iget-object v0, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 107
    .local v4, editTextAreaCode:Ljava/lang/String;
    iget-object v0, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mContext:Landroid/content/Context;

    const v5, 0x7f0d0162

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 108
    .local v6, numberMessage:Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "+"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v5, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mPrefixInfo:Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;

    iget-object v5, v5, Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;->mCountryCode:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, " ("

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v5, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ") "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v5, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mPrefixInfo:Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;

    iget-object v5, v5, Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;->mNumberOrigin:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 111
    .local v7, numberDisplay:Ljava/lang/String;
    const/4 v5, 0x1

    iget-object v0, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    iget-object v0, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    move-object v0, p0

    invoke-virtual/range {v0 .. v9}, Lcom/mediatek/phone/calloption/PhoneInternationalDialogHandler;->createButtonEditTextItems(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected createCountrySelectDefaultAreaInputDialogItems()Landroid/view/View;
    .locals 12

    .prologue
    const/4 v5, 0x1

    .line 118
    iget-object v0, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mContext:Landroid/content/Context;

    const v8, 0x7f0d015a

    invoke-virtual {v0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 119
    .local v1, description:Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mPrefixInfo:Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;

    iget-object v8, v8, Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;->mCountryName:Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v8, " (+"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v8, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mPrefixInfo:Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;

    iget-object v8, v8, Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;->mCountryCode:Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v8, ") "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 120
    .local v2, messageButton:Ljava/lang/String;
    iget-object v0, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mContext:Landroid/content/Context;

    const v8, 0x7f0d0163

    new-array v9, v5, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mPrefixInfo:Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;

    iget-object v11, v11, Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;->mAreaName:Ljava/lang/String;

    aput-object v11, v9, v10

    invoke-virtual {v0, v8, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 123
    .local v3, editTextMessage:Ljava/lang/String;
    iget-object v0, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mPrefixInfo:Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;

    iget-object v4, v0, Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;->mAreaCode:Ljava/lang/String;

    .line 124
    .local v4, editTextAreaCode:Ljava/lang/String;
    iget-object v0, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mPrefixInfo:Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;

    iget-object v0, v0, Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;->mAreaName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 125
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v8, " ("

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v8, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mPrefixInfo:Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;

    iget-object v8, v8, Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;->mAreaName:Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v8, ") "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 127
    :cond_0
    iget-object v0, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mContext:Landroid/content/Context;

    const v8, 0x7f0d0162

    invoke-virtual {v0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 128
    .local v6, numberMessage:Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "+"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v8, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mPrefixInfo:Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;

    iget-object v8, v8, Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;->mCountryCode:Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v8, " "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v8, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mPrefixInfo:Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;

    iget-object v8, v8, Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;->mAreaCode:Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v8, " "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v8, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mPrefixInfo:Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;

    iget-object v8, v8, Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;->mNumberOrigin:Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v8, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mPrefixInfo:Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;

    iget-object v8, v8, Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;->mSuggestCountryISO:Ljava/lang/String;

    invoke-static {v0, v8}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 131
    .local v7, numberDisplay:Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 132
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "+"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v8, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mPrefixInfo:Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;

    iget-object v8, v8, Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;->mCountryCode:Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v8, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mPrefixInfo:Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;

    iget-object v8, v8, Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;->mAreaCode:Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v8, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mPrefixInfo:Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;

    iget-object v8, v8, Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;->mNumberOrigin:Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 134
    :cond_1
    iget-object v0, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mContext:Landroid/content/Context;

    const v8, 0x7f0d0169

    invoke-virtual {v0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    iget-object v0, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mContext:Landroid/content/Context;

    const v9, 0x7f0d0161

    invoke-virtual {v0, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    move-object v0, p0

    invoke-virtual/range {v0 .. v9}, Lcom/mediatek/phone/calloption/PhoneInternationalDialogHandler;->createButtonEditTextItems(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected createCountrySelectDialogItems()Landroid/view/View;
    .locals 10

    .prologue
    const v9, 0x7f0d0161

    .line 84
    iget-object v0, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mContext:Landroid/content/Context;

    const v5, 0x7f0d015a

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 85
    .local v1, description:Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mPrefixInfo:Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;

    iget-object v5, v5, Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;->mCountryName:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "(+"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v5, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mPrefixInfo:Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;

    iget-object v5, v5, Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;->mCountryCode:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ")"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 86
    .local v2, messageButton:Ljava/lang/String;
    iget-object v0, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mContext:Landroid/content/Context;

    const v5, 0x7f0d0160

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 87
    .local v3, editTextMessage:Ljava/lang/String;
    iget-object v0, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 88
    .local v4, editTextAreaCode:Ljava/lang/String;
    iget-object v0, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mContext:Landroid/content/Context;

    const v5, 0x7f0d0162

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 89
    .local v6, numberMessage:Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "+"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v5, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mPrefixInfo:Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;

    iget-object v5, v5, Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;->mCountryCode:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v5, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mPrefixInfo:Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;

    iget-object v5, v5, Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;->mAreaCode:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v5, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mPrefixInfo:Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;

    iget-object v5, v5, Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;->mNumberSubscriber:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v5, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mPrefixInfo:Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;

    iget-object v5, v5, Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;->mSuggestCountryISO:Ljava/lang/String;

    invoke-static {v0, v5}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 93
    .local v7, numberDisplay:Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "+"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v5, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mPrefixInfo:Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;

    iget-object v5, v5, Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;->mCountryCode:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v5, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mPrefixInfo:Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;

    iget-object v5, v5, Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;->mAreaCode:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v5, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mPrefixInfo:Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;

    iget-object v5, v5, Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;->mNumberSubscriber:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 96
    :cond_0
    const/4 v5, 0x0

    iget-object v0, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mContext:Landroid/content/Context;

    const v8, 0x7f0d0169

    invoke-virtual {v0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    iget-object v0, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    move-object v0, p0

    invoke-virtual/range {v0 .. v9}, Lcom/mediatek/phone/calloption/PhoneInternationalDialogHandler;->createButtonEditTextItems(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected createCountrySingleSelectDialogItems()Landroid/view/View;
    .locals 10

    .prologue
    .line 65
    iget-object v0, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mContext:Landroid/content/Context;

    const v6, 0x7f0d015b

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mPrefixInfo:Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;

    iget-object v9, v9, Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;->mCountryName:Ljava/lang/String;

    aput-object v9, v7, v8

    const/4 v8, 0x1

    iget-object v9, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mPrefixInfo:Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;

    iget-object v9, v9, Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;->mCountryCode:Ljava/lang/String;

    aput-object v9, v7, v8

    invoke-virtual {v0, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 68
    .local v1, description:Ljava/lang/String;
    iget-object v0, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mContext:Landroid/content/Context;

    const v6, 0x7f0d0166

    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 69
    .local v2, messageYes:Ljava/lang/String;
    iget-object v0, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mContext:Landroid/content/Context;

    const v6, 0x7f0d0167

    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 70
    .local v4, messageNo:Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "+"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v6, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mPrefixInfo:Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;

    iget-object v6, v6, Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;->mCountryCode:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v6, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mPrefixInfo:Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;

    iget-object v6, v6, Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;->mAreaCode:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v6, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mPrefixInfo:Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;

    iget-object v6, v6, Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;->mNumberSubscriber:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v6, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mPrefixInfo:Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;

    iget-object v6, v6, Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;->mSuggestCountryISO:Ljava/lang/String;

    invoke-static {v0, v6}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 73
    .local v3, numberYes:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "+"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v6, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mPrefixInfo:Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;

    iget-object v6, v6, Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;->mCountryCode:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v6, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mPrefixInfo:Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;

    iget-object v6, v6, Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;->mAreaCode:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v6, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mPrefixInfo:Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;

    iget-object v6, v6, Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;->mNumberSubscriber:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 76
    :cond_0
    iget-object v0, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mPrefixInfo:Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;

    iget-object v0, v0, Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;->mNumberOrigin:Ljava/lang/String;

    iget-object v6, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mPrefixInfo:Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;

    iget-object v6, v6, Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;->mCurrentCountryISO:Ljava/lang/String;

    invoke-static {v0, v6}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 77
    .local v5, numberNo:Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 78
    iget-object v0, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mPrefixInfo:Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;

    iget-object v5, v0, Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;->mNumberOrigin:Ljava/lang/String;

    :cond_1
    move-object v0, p0

    .line 80
    invoke-virtual/range {v0 .. v5}, Lcom/mediatek/phone/calloption/PhoneInternationalDialogHandler;->createSingleSelectItems(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected createDefaultAreaInputSingleSelectDialogItems()Landroid/view/View;
    .locals 12

    .prologue
    .line 161
    iget-object v0, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mContext:Landroid/content/Context;

    const v8, 0x7f0d015f

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mPrefixInfo:Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;

    iget-object v11, v11, Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;->mCountryName:Ljava/lang/String;

    aput-object v11, v9, v10

    const/4 v10, 0x1

    iget-object v11, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mPrefixInfo:Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;

    iget-object v11, v11, Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;->mAreaName:Ljava/lang/String;

    aput-object v11, v9, v10

    invoke-virtual {v0, v8, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 164
    .local v1, description1:Ljava/lang/String;
    iget-object v0, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mPrefixInfo:Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;

    iget-object v2, v0, Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;->mAreaCode:Ljava/lang/String;

    .line 165
    .local v2, editText:Ljava/lang/String;
    iget-object v0, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mPrefixInfo:Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;

    iget-object v0, v0, Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;->mAreaName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 166
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v8, " ("

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v8, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mPrefixInfo:Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;

    iget-object v8, v8, Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;->mAreaName:Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v8, ") "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 168
    :cond_0
    iget-object v0, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mContext:Landroid/content/Context;

    const v8, 0x7f0d016b

    invoke-virtual {v0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 170
    .local v3, description2:Ljava/lang/String;
    iget-object v0, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mContext:Landroid/content/Context;

    const v8, 0x7f0d0166

    invoke-virtual {v0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 171
    .local v4, messageYes:Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "+"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v8, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mPrefixInfo:Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;

    iget-object v8, v8, Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;->mCountryCode:Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v8, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mPrefixInfo:Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;

    iget-object v8, v8, Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;->mAreaCode:Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v8, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mPrefixInfo:Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;

    iget-object v8, v8, Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;->mNumberOrigin:Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v8, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mPrefixInfo:Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;

    iget-object v8, v8, Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;->mSuggestCountryISO:Ljava/lang/String;

    invoke-static {v0, v8}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 174
    .local v5, numberYes:Ljava/lang/String;
    iget-object v0, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mContext:Landroid/content/Context;

    const v8, 0x7f0d0167

    invoke-virtual {v0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 175
    .local v6, messageNo:Ljava/lang/String;
    iget-object v0, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mPrefixInfo:Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;

    iget-object v0, v0, Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;->mNumberOrigin:Ljava/lang/String;

    iget-object v8, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mPrefixInfo:Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;

    iget-object v8, v8, Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;->mCurrentCountryISO:Ljava/lang/String;

    invoke-static {v0, v8}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 176
    .local v7, numberNo:Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 177
    iget-object v0, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mPrefixInfo:Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;

    iget-object v7, v0, Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;->mNumberOrigin:Ljava/lang/String;

    :cond_1
    move-object v0, p0

    .line 179
    invoke-virtual/range {v0 .. v7}, Lcom/mediatek/phone/calloption/PhoneInternationalDialogHandler;->createEditTextSingleSelectItems(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected createEditTextSingleSelectItems(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;
    .locals 7
    .parameter "description1"
    .parameter "editText"
    .parameter "description2"
    .parameter "messageYes"
    .parameter "numberYes"
    .parameter "messageNo"
    .parameter "numberNo"

    .prologue
    const v6, 0x7f08009e

    const v5, 0x7f080097

    const v4, 0x7f080096

    .line 233
    iput-object p5, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mOriginSuggestNumber:Ljava/lang/String;

    .line 235
    iget-object v2, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mContext:Landroid/content/Context;

    const-string v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 237
    .local v1, inflater:Landroid/view/LayoutInflater;
    const v2, 0x7f040022

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 239
    .local v0, dialogView:Landroid/view/View;
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mDescriptionText:Landroid/widget/TextView;

    .line 240
    iget-object v2, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mDescriptionText:Landroid/widget/TextView;

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 242
    const v2, 0x7f080098

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mInputAreaEditText:Landroid/widget/EditText;

    .line 243
    iget-object v2, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mInputAreaEditText:Landroid/widget/EditText;

    invoke-virtual {v2, p2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 244
    iget-object v2, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mInputAreaEditText:Landroid/widget/EditText;

    invoke-virtual {v2, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 246
    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mAreaCodeDescription:Landroid/widget/TextView;

    .line 247
    iget-object v2, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mAreaCodeDescription:Landroid/widget/TextView;

    invoke-virtual {v2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 249
    const v2, 0x7f08009b

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mSingleGroup1:Landroid/view/ViewGroup;

    .line 250
    iget-object v2, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mSingleGroup1:Landroid/view/ViewGroup;

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mMessageYesText:Landroid/widget/TextView;

    .line 251
    iget-object v2, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mMessageYesText:Landroid/widget/TextView;

    invoke-virtual {v2, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 252
    iget-object v2, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mSingleGroup1:Landroid/view/ViewGroup;

    invoke-virtual {v2, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mSuggestNumberText:Landroid/widget/TextView;

    .line 253
    iget-object v2, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mSuggestNumberText:Landroid/widget/TextView;

    invoke-virtual {v2, p5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 254
    iget-object v2, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mSingleGroup1:Landroid/view/ViewGroup;

    invoke-virtual {v2, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioButton;

    iput-object v2, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mRadioButton1:Landroid/widget/RadioButton;

    .line 255
    iget-object v2, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mRadioButton1:Landroid/widget/RadioButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 256
    iget-object v2, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mSingleGroup1:Landroid/view/ViewGroup;

    invoke-virtual {v2, p0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 258
    const v2, 0x7f08009c

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mSingleGroup2:Landroid/view/ViewGroup;

    .line 259
    iget-object v2, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mSingleGroup2:Landroid/view/ViewGroup;

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mMessageNoText:Landroid/widget/TextView;

    .line 260
    iget-object v2, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mMessageNoText:Landroid/widget/TextView;

    invoke-virtual {v2, p6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 261
    iget-object v2, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mSingleGroup2:Landroid/view/ViewGroup;

    invoke-virtual {v2, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mOriginNumberText:Landroid/widget/TextView;

    .line 262
    iget-object v2, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mOriginNumberText:Landroid/widget/TextView;

    invoke-virtual {v2, p7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 263
    iget-object v2, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mSingleGroup2:Landroid/view/ViewGroup;

    invoke-virtual {v2, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioButton;

    iput-object v2, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mRadioButton2:Landroid/widget/RadioButton;

    .line 264
    iget-object v2, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mSingleGroup2:Landroid/view/ViewGroup;

    invoke-virtual {v2, p0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 266
    return-object v0
.end method

.method protected createPrefixConfirmDialogItems()Landroid/view/View;
    .locals 10

    .prologue
    .line 28
    iget-object v0, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mContext:Landroid/content/Context;

    const v6, 0x7f0d015d

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mPrefixInfo:Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;

    iget-object v9, v9, Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;->mCountryName:Ljava/lang/String;

    aput-object v9, v7, v8

    invoke-virtual {v0, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 31
    .local v1, description:Ljava/lang/String;
    iget-object v0, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mContext:Landroid/content/Context;

    const v6, 0x7f0d0166

    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 32
    .local v2, messageYes:Ljava/lang/String;
    iget-object v0, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mContext:Landroid/content/Context;

    const v6, 0x7f0d0167

    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 33
    .local v4, messageNo:Ljava/lang/String;
    iget-object v0, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mPrefixInfo:Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;

    iget-object v0, v0, Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;->mNumberReplaceInterPrefix:Ljava/lang/String;

    iget-object v6, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mPrefixInfo:Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;

    iget-object v6, v6, Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;->mSuggestCountryISO:Ljava/lang/String;

    invoke-static {v0, v6}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 35
    .local v3, numberYes:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 36
    iget-object v0, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mPrefixInfo:Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;

    iget-object v3, v0, Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;->mNumberReplaceInterPrefix:Ljava/lang/String;

    .line 38
    :cond_0
    iget-object v0, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mPrefixInfo:Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;

    iget-object v0, v0, Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;->mNumberOrigin:Ljava/lang/String;

    iget-object v6, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mPrefixInfo:Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;

    iget-object v6, v6, Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;->mCurrentCountryISO:Ljava/lang/String;

    invoke-static {v0, v6}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 39
    .local v5, numberNo:Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 40
    iget-object v0, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mPrefixInfo:Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;

    iget-object v5, v0, Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;->mNumberOrigin:Ljava/lang/String;

    :cond_1
    move-object v0, p0

    .line 42
    invoke-virtual/range {v0 .. v5}, Lcom/mediatek/phone/calloption/PhoneInternationalDialogHandler;->createSingleSelectItems(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected createSingleSelectItems(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;
    .locals 7
    .parameter "description"
    .parameter "messageYes"
    .parameter "numberYes"
    .parameter "messageNo"
    .parameter "numberNo"

    .prologue
    const v6, 0x7f08009e

    const v5, 0x7f080097

    const v4, 0x7f080096

    .line 272
    iput-object p3, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mOriginSuggestNumber:Ljava/lang/String;

    .line 274
    iget-object v2, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mContext:Landroid/content/Context;

    const-string v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 276
    .local v1, inflater:Landroid/view/LayoutInflater;
    const v2, 0x7f040023

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 278
    .local v0, dialogView:Landroid/view/View;
    const v2, 0x7f08009d

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mDescriptionText:Landroid/widget/TextView;

    .line 279
    iget-object v2, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mDescriptionText:Landroid/widget/TextView;

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 281
    const v2, 0x7f08009b

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mSingleGroup1:Landroid/view/ViewGroup;

    .line 282
    iget-object v2, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mSingleGroup1:Landroid/view/ViewGroup;

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mMessageYesText:Landroid/widget/TextView;

    .line 283
    iget-object v2, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mMessageYesText:Landroid/widget/TextView;

    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 284
    iget-object v2, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mSingleGroup1:Landroid/view/ViewGroup;

    invoke-virtual {v2, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mSuggestNumberText:Landroid/widget/TextView;

    .line 285
    iget-object v2, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mSuggestNumberText:Landroid/widget/TextView;

    invoke-virtual {v2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 286
    iget-object v2, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mSingleGroup1:Landroid/view/ViewGroup;

    invoke-virtual {v2, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioButton;

    iput-object v2, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mRadioButton1:Landroid/widget/RadioButton;

    .line 287
    iget-object v2, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mRadioButton1:Landroid/widget/RadioButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 288
    iget-object v2, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mSingleGroup1:Landroid/view/ViewGroup;

    invoke-virtual {v2, p0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 290
    const v2, 0x7f08009c

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mSingleGroup2:Landroid/view/ViewGroup;

    .line 291
    iget-object v2, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mSingleGroup2:Landroid/view/ViewGroup;

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mMessageNoText:Landroid/widget/TextView;

    .line 292
    iget-object v2, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mMessageNoText:Landroid/widget/TextView;

    invoke-virtual {v2, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 293
    iget-object v2, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mSingleGroup2:Landroid/view/ViewGroup;

    invoke-virtual {v2, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mOriginNumberText:Landroid/widget/TextView;

    .line 294
    iget-object v2, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mOriginNumberText:Landroid/widget/TextView;

    invoke-virtual {v2, p5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 295
    iget-object v2, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mSingleGroup2:Landroid/view/ViewGroup;

    invoke-virtual {v2, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioButton;

    iput-object v2, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mRadioButton2:Landroid/widget/RadioButton;

    .line 296
    iget-object v2, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mSingleGroup2:Landroid/view/ViewGroup;

    invoke-virtual {v2, p0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 298
    return-object v0
.end method
