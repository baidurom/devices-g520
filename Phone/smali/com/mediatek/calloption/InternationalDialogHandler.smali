.class public abstract Lcom/mediatek/calloption/InternationalDialogHandler;
.super Ljava/lang/Object;
.source "InternationalDialogHandler.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/text/TextWatcher;
.implements Landroid/content/DialogInterface$OnShowListener;
.implements Lcom/mediatek/calloption/InternationalCountrySelectDialogHandler$OnCountrySelectListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;
    }
.end annotation


# static fields
.field public static final DIALOG_TYPE_AREA_INPUT_SINGLE_SELECT:I = 0x6

.field public static final DIALOG_TYPE_COUNTRY_AREA_SINGLE_SELECT:I = 0x1

.field public static final DIALOG_TYPE_COUNTRY_SELECT:I = 0x3

.field public static final DIALOG_TYPE_COUNTRY_SELECT_AREA_INPUT:I = 0x4

.field public static final DIALOG_TYPE_COUNTRY_SELECT_DEFAULT_AREA_INPUT:I = 0x5

.field public static final DIALOG_TYPE_COUNTRY_SINGLE_SELECT:I = 0x2

.field public static final DIALOG_TYPE_DEFAULT_AREA_INPUT_SINGLE_SELECT:I = 0x7

.field public static final DIALOG_TYPE_INTERNATIONAL_PREFIX_CONFIRM:I = 0x0

.field private static final TAG:Ljava/lang/String; = "InternationalDialogHandler"


# instance fields
.field protected mAlertDialog:Landroid/app/AlertDialog;

.field protected mAreaCodeDescription:Landroid/widget/TextView;

.field protected mContext:Landroid/content/Context;

.field protected mCountrySelectButton:Landroid/widget/Button;

.field protected mCountrySelectDialogHandler:Lcom/mediatek/calloption/InternationalCountrySelectDialogHandler;

.field protected mDescriptionText:Landroid/widget/TextView;

.field protected mInputAreaEditText:Landroid/widget/EditText;

.field protected mMessageNoText:Landroid/widget/TextView;

.field protected mMessageYesText:Landroid/widget/TextView;

.field protected mOriginNumberText:Landroid/widget/TextView;

.field protected mOriginSuggestNumber:Ljava/lang/String;

.field protected mPrefixInfo:Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;

.field protected mRadioButton1:Landroid/widget/RadioButton;

.field protected mRadioButton2:Landroid/widget/RadioButton;

.field protected mSingleGroup1:Landroid/view/ViewGroup;

.field protected mSingleGroup2:Landroid/view/ViewGroup;

.field protected mSuggestNumberText:Landroid/widget/TextView;

.field protected mTextAreaCode:Ljava/lang/String;

.field protected mTextInputCodeHere:Ljava/lang/String;

.field protected mType:I


# direct methods
.method public constructor <init>(Landroid/content/Context;ILcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;)V
    .locals 0
    .parameter "context"
    .parameter "type"
    .parameter "prefixInfo"

    .prologue
    .line 109
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 110
    iput-object p1, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mContext:Landroid/content/Context;

    .line 111
    iput p2, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mType:I

    .line 112
    iput-object p3, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mPrefixInfo:Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;

    .line 113
    return-void
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 383
    const-string v0, "InternationalDialogHandler"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 9
    .parameter "input"

    .prologue
    const/4 v8, 0x6

    const/4 v7, 0x5

    const/4 v6, 0x4

    const/4 v5, -0x1

    .line 279
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 280
    const-string v3, "afterTextChanged(), input is null"

    invoke-static {v3}, Lcom/mediatek/calloption/InternationalDialogHandler;->log(Ljava/lang/String;)V

    .line 281
    iget-object v3, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mSuggestNumberText:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mOriginSuggestNumber:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 282
    iget v3, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mType:I

    if-eq v6, v3, :cond_0

    iget v3, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mType:I

    if-eq v7, v3, :cond_0

    iget v3, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mType:I

    if-ne v8, v3, :cond_1

    iget-object v3, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mRadioButton1:Landroid/widget/RadioButton;

    invoke-virtual {v3}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 285
    :cond_0
    iget-object v3, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3, v5}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    .line 286
    .local v0, button:Landroid/widget/Button;
    if-eqz v0, :cond_1

    .line 287
    const-string v3, "afterTextChanged(), disable button"

    invoke-static {v3}, Lcom/mediatek/calloption/InternationalDialogHandler;->log(Ljava/lang/String;)V

    .line 288
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 313
    .end local v0           #button:Landroid/widget/Button;
    :cond_1
    :goto_0
    return-void

    .line 292
    :cond_2
    const-string v3, "afterTextChanged(), input is NOT null"

    invoke-static {v3}, Lcom/mediatek/calloption/InternationalDialogHandler;->log(Ljava/lang/String;)V

    .line 293
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 294
    .local v1, inputAreaCode:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mPrefixInfo.mPossibleAreaPrefix = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mPrefixInfo:Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;

    iget-object v4, v4, Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;->mPossibleAreaPrefix:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/calloption/InternationalDialogHandler;->log(Ljava/lang/String;)V

    .line 295
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "inputAreaCode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/calloption/InternationalDialogHandler;->log(Ljava/lang/String;)V

    .line 296
    iget-object v3, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mPrefixInfo:Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;

    iget-object v3, v3, Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;->mPossibleAreaPrefix:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mPrefixInfo:Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;

    iget-object v3, v3, Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;->mPossibleAreaPrefix:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 298
    iget-object v3, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mPrefixInfo:Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;

    iget-object v3, v3, Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;->mPossibleAreaPrefix:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 300
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "+"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mPrefixInfo:Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;

    iget-object v4, v4, Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;->mCountryCode:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mPrefixInfo:Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;

    iget-object v4, v4, Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;->mNumberSubscriber:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mPrefixInfo:Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;

    iget-object v4, v4, Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;->mSuggestCountryISO:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 302
    .local v2, suggestNumber:Ljava/lang/String;
    iget-object v3, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mSuggestNumberText:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 303
    iget v3, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mType:I

    if-eq v6, v3, :cond_4

    iget v3, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mType:I

    if-eq v7, v3, :cond_4

    iget v3, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mType:I

    if-ne v8, v3, :cond_1

    .line 306
    :cond_4
    iget-object v3, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3, v5}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    .line 307
    .restart local v0       #button:Landroid/widget/Button;
    if-eqz v0, :cond_1

    .line 308
    const-string v3, "afterTextChanged(), enable button"

    invoke-static {v3}, Lcom/mediatek/calloption/InternationalDialogHandler;->log(Ljava/lang/String;)V

    .line 309
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 317
    return-void
.end method

.method protected abstract createAreaInputSingleSelectDialogItems()Landroid/view/View;
.end method

.method protected abstract createButtonEditTextItems(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;
.end method

.method protected abstract createCountryAreaSingleSelectDialogItems()Landroid/view/View;
.end method

.method protected abstract createCountrySelectAreaInputDialogItems()Landroid/view/View;
.end method

.method protected abstract createCountrySelectDefaultAreaInputDialogItems()Landroid/view/View;
.end method

.method protected abstract createCountrySelectDialogItems()Landroid/view/View;
.end method

.method protected abstract createCountrySingleSelectDialogItems()Landroid/view/View;
.end method

.method protected abstract createDefaultAreaInputSingleSelectDialogItems()Landroid/view/View;
.end method

.method public createDialogView()Landroid/view/View;
    .locals 1

    .prologue
    .line 116
    iget v0, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mType:I

    packed-switch v0, :pswitch_data_0

    .line 136
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 118
    :pswitch_0
    invoke-virtual {p0}, Lcom/mediatek/calloption/InternationalDialogHandler;->createPrefixConfirmDialogItems()Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 120
    :pswitch_1
    invoke-virtual {p0}, Lcom/mediatek/calloption/InternationalDialogHandler;->createCountryAreaSingleSelectDialogItems()Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 122
    :pswitch_2
    invoke-virtual {p0}, Lcom/mediatek/calloption/InternationalDialogHandler;->createCountrySingleSelectDialogItems()Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 124
    :pswitch_3
    invoke-virtual {p0}, Lcom/mediatek/calloption/InternationalDialogHandler;->createCountrySelectDialogItems()Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 126
    :pswitch_4
    invoke-virtual {p0}, Lcom/mediatek/calloption/InternationalDialogHandler;->createCountrySelectAreaInputDialogItems()Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 128
    :pswitch_5
    invoke-virtual {p0}, Lcom/mediatek/calloption/InternationalDialogHandler;->createCountrySelectDefaultAreaInputDialogItems()Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 130
    :pswitch_6
    invoke-virtual {p0}, Lcom/mediatek/calloption/InternationalDialogHandler;->createAreaInputSingleSelectDialogItems()Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 132
    :pswitch_7
    invoke-virtual {p0}, Lcom/mediatek/calloption/InternationalDialogHandler;->createDefaultAreaInputSingleSelectDialogItems()Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 116
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method protected abstract createEditTextSingleSelectItems(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;
.end method

.method protected abstract createPrefixConfirmDialogItems()Landroid/view/View;
.end method

.method protected abstract createSingleSelectItems(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;
.end method

.method public getCountryCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 353
    iget-object v0, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mPrefixInfo:Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;

    iget-object v0, v0, Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;->mCountryCode:Ljava/lang/String;

    return-object v0
.end method

.method public getSelectResult()Ljava/lang/String;
    .locals 2

    .prologue
    .line 324
    const-string v0, ""

    .line 326
    .local v0, result:Ljava/lang/CharSequence;
    iget v1, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mType:I

    packed-switch v1, :pswitch_data_0

    .line 349
    :cond_0
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 333
    :pswitch_0
    iget-object v1, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mRadioButton1:Landroid/widget/RadioButton;

    invoke-virtual {v1}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 334
    iget-object v1, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mSuggestNumberText:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    .line 335
    :cond_1
    iget-object v1, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mRadioButton2:Landroid/widget/RadioButton;

    invoke-virtual {v1}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 336
    iget-object v1, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mOriginNumberText:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    .line 343
    :pswitch_1
    iget-object v1, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mSuggestNumberText:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 344
    goto :goto_0

    .line 326
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "view"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 173
    iget-object v1, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mSingleGroup1:Landroid/view/ViewGroup;

    if-eq p1, v1, :cond_0

    iget-object v1, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mSingleGroup2:Landroid/view/ViewGroup;

    if-ne p1, v1, :cond_5

    .line 174
    :cond_0
    iget-object v1, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mSingleGroup1:Landroid/view/ViewGroup;

    if-ne p1, v1, :cond_1

    .line 175
    iget-object v1, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mRadioButton1:Landroid/widget/RadioButton;

    invoke-virtual {v1, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 176
    iget-object v1, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mRadioButton2:Landroid/widget/RadioButton;

    invoke-virtual {v1, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 178
    :cond_1
    iget-object v1, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mSingleGroup2:Landroid/view/ViewGroup;

    if-ne p1, v1, :cond_2

    .line 179
    iget-object v1, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mRadioButton2:Landroid/widget/RadioButton;

    invoke-virtual {v1, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 180
    iget-object v1, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mRadioButton1:Landroid/widget/RadioButton;

    invoke-virtual {v1, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 182
    :cond_2
    iget-object v1, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mAlertDialog:Landroid/app/AlertDialog;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    .line 183
    .local v0, button:Landroid/widget/Button;
    if-eqz v0, :cond_3

    .line 184
    const/4 v1, 0x6

    iget v2, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mType:I

    if-ne v1, v2, :cond_4

    iget-object v1, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mRadioButton1:Landroid/widget/RadioButton;

    invoke-virtual {v1}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mInputAreaEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 186
    const-string v1, "onClick(), disable button"

    invoke-static {v1}, Lcom/mediatek/calloption/InternationalDialogHandler;->log(Ljava/lang/String;)V

    .line 187
    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 197
    .end local v0           #button:Landroid/widget/Button;
    :cond_3
    :goto_0
    return-void

    .line 189
    .restart local v0       #button:Landroid/widget/Button;
    :cond_4
    const-string v1, "onClick(), enable button"

    invoke-static {v1}, Lcom/mediatek/calloption/InternationalDialogHandler;->log(Ljava/lang/String;)V

    .line 190
    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 193
    .end local v0           #button:Landroid/widget/Button;
    :cond_5
    iget-object v1, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mCountrySelectButton:Landroid/widget/Button;

    if-ne p1, v1, :cond_3

    .line 195
    iget-object v1, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mCountrySelectDialogHandler:Lcom/mediatek/calloption/InternationalCountrySelectDialogHandler;

    iget-object v2, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mPrefixInfo:Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;

    iget-object v2, v2, Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;->mValidCountryISOList:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Lcom/mediatek/calloption/InternationalCountrySelectDialogHandler;->showCountrySelectDialog(Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method public onCountrySelected(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 11
    .parameter "countryISO"
    .parameter "countryCode"
    .parameter "countryName"

    .prologue
    const/16 v10, 0x8

    const/4 v9, 0x1

    const/4 v8, -0x1

    const/4 v7, 0x0

    .line 201
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onCountrySelected(), countryISO = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", countryCode = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", countryName = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/mediatek/calloption/InternationalDialogHandler;->log(Ljava/lang/String;)V

    .line 203
    iget-object v4, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mPrefixInfo:Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;

    iput-object p1, v4, Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;->mSuggestCountryISO:Ljava/lang/String;

    .line 204
    iget-object v4, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mPrefixInfo:Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;

    iput-object p2, v4, Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;->mCountryCode:Ljava/lang/String;

    .line 205
    iget-object v4, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mPrefixInfo:Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;

    iput-object p3, v4, Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;->mCountryName:Ljava/lang/String;

    .line 206
    iget-object v4, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mPrefixInfo:Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;

    iget-object v4, v4, Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;->mNumberOrigin:Ljava/lang/String;

    iget-object v5, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mPrefixInfo:Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;

    iget-object v5, v5, Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;->mSuggestCountryISO:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/mediatek/calloption/CallOptionUtils;->getNumberInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/mediatek/calloption/CallOptionUtils$NumberInfo;

    move-result-object v2

    .line 208
    .local v2, numberInfo:Lcom/mediatek/calloption/CallOptionUtils$NumberInfo;
    iget-object v4, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mPrefixInfo:Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;

    iget-object v5, v2, Lcom/mediatek/calloption/CallOptionUtils$NumberInfo;->mAreaCode:Ljava/lang/String;

    iput-object v5, v4, Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;->mAreaCode:Ljava/lang/String;

    .line 209
    iget-object v4, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mPrefixInfo:Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;

    iget-object v5, v2, Lcom/mediatek/calloption/CallOptionUtils$NumberInfo;->mSubscriber:Ljava/lang/String;

    iput-object v5, v4, Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;->mNumberSubscriber:Ljava/lang/String;

    .line 210
    iget-object v4, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mPrefixInfo:Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;

    iget-object v5, v2, Lcom/mediatek/calloption/CallOptionUtils$NumberInfo;->mAreaCodePrefix:Ljava/lang/String;

    iput-object v5, v4, Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;->mPossibleAreaPrefix:Ljava/lang/String;

    .line 211
    iget-object v4, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mPrefixInfo:Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;

    iget-object v4, v4, Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;->mAreaCode:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 212
    iget-object v4, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mPrefixInfo:Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;

    iget-object v5, v5, Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;->mNumberOrigin:Ljava/lang/String;

    iget-object v6, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mPrefixInfo:Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;

    iget-object v6, v6, Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;->mSuggestCountryISO:Ljava/lang/String;

    invoke-static {v4, v5, v6}, Lcom/mediatek/calloption/CallOptionUtils;->isValidNumberForCountryISO(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 213
    iget-object v4, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mPrefixInfo:Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;

    iget-object v5, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mPrefixInfo:Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;

    iget-object v5, v5, Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;->mSuggestCountryISO:Ljava/lang/String;

    iget-object v6, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mPrefixInfo:Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;

    iget-object v6, v6, Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;->mNumberOrigin:Ljava/lang/String;

    invoke-static {v5, v6}, Landroid/telephony/PhoneNumberUtils;->isAreaCodeNeeded(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, v4, Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;->mIsAreaCodeNeeded:Z

    .line 219
    :cond_0
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mPrefixInfo = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mPrefixInfo:Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/mediatek/calloption/InternationalDialogHandler;->log(Ljava/lang/String;)V

    .line 221
    iget-object v4, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mCountrySelectButton:Landroid/widget/Button;

    if-eqz v4, :cond_1

    .line 222
    iget-object v4, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mCountrySelectButton:Landroid/widget/Button;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mPrefixInfo:Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;

    iget-object v6, v6, Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;->mCountryName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "(+"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mPrefixInfo:Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;

    iget-object v6, v6, Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;->mCountryCode:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 224
    :cond_1
    iget-object v4, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mPrefixInfo:Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;

    iget-boolean v4, v4, Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;->mIsAreaCodeNeeded:Z

    if-eqz v4, :cond_6

    .line 225
    iget-object v4, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mAreaCodeDescription:Landroid/widget/TextView;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 226
    iget-object v4, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mInputAreaEditText:Landroid/widget/EditText;

    invoke-virtual {v4, v7}, Landroid/widget/EditText;->setVisibility(I)V

    .line 227
    iget-object v4, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mPrefixInfo:Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;

    iget-object v5, v5, Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;->mSuggestCountryISO:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/mediatek/phone/provider/CallHistory$Calls;->getLatestAreaCode(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 229
    .local v1, latestAreaCode:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 230
    iget-object v4, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mInputAreaEditText:Landroid/widget/EditText;

    const-string v5, ""

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 231
    iget-object v4, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mInputAreaEditText:Landroid/widget/EditText;

    invoke-virtual {v4, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 232
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "+"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mPrefixInfo:Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;

    iget-object v5, v5, Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;->mCountryCode:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mPrefixInfo:Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;

    iget-object v5, v5, Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;->mNumberOrigin:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mPrefixInfo:Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;

    iget-object v5, v5, Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;->mSuggestCountryISO:Ljava/lang/String;

    invoke-static {v4, v5}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mOriginSuggestNumber:Ljava/lang/String;

    .line 235
    iget-object v4, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mOriginSuggestNumber:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 236
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "+"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mPrefixInfo:Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;

    iget-object v5, v5, Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;->mCountryCode:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mPrefixInfo:Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;

    iget-object v5, v5, Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;->mNumberOrigin:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mOriginSuggestNumber:Ljava/lang/String;

    .line 238
    :cond_2
    iget-object v4, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mSuggestNumberText:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mOriginSuggestNumber:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 239
    const/4 v4, 0x4

    iput v4, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mType:I

    .line 240
    iget-object v4, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4, v8}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    .line 241
    .local v0, button:Landroid/widget/Button;
    if-eqz v0, :cond_3

    .line 242
    const-string v4, "onCountrySelected(), use latest area code, enable button"

    invoke-static {v4}, Lcom/mediatek/calloption/InternationalDialogHandler;->log(Ljava/lang/String;)V

    .line 243
    invoke-virtual {v0, v9}, Landroid/widget/Button;->setEnabled(Z)V

    .line 275
    .end local v1           #latestAreaCode:Ljava/lang/String;
    :cond_3
    :goto_1
    return-void

    .line 217
    .end local v0           #button:Landroid/widget/Button;
    :cond_4
    iget-object v4, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mPrefixInfo:Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;

    iput-boolean v7, v4, Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;->mIsAreaCodeNeeded:Z

    goto/16 :goto_0

    .line 246
    .restart local v1       #latestAreaCode:Ljava/lang/String;
    :cond_5
    iget-object v4, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mInputAreaEditText:Landroid/widget/EditText;

    const-string v5, ""

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 247
    iget-object v4, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mInputAreaEditText:Landroid/widget/EditText;

    iget-object v5, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mTextInputCodeHere:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 248
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "+"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mPrefixInfo:Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;

    iget-object v5, v5, Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;->mCountryCode:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mTextAreaCode:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mPrefixInfo:Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;

    iget-object v5, v5, Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;->mNumberOrigin:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mOriginSuggestNumber:Ljava/lang/String;

    .line 250
    iget-object v4, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mSuggestNumberText:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mOriginSuggestNumber:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 251
    const/4 v4, 0x5

    iput v4, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mType:I

    .line 252
    iget-object v4, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4, v8}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    .line 253
    .restart local v0       #button:Landroid/widget/Button;
    if-eqz v0, :cond_3

    .line 254
    const-string v4, "onCountrySelected(), no area code, disable button"

    invoke-static {v4}, Lcom/mediatek/calloption/InternationalDialogHandler;->log(Ljava/lang/String;)V

    .line 255
    invoke-virtual {v0, v7}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_1

    .line 259
    .end local v0           #button:Landroid/widget/Button;
    .end local v1           #latestAreaCode:Ljava/lang/String;
    :cond_6
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "+"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mPrefixInfo:Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;

    iget-object v5, v5, Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;->mCountryCode:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mPrefixInfo:Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;

    iget-object v5, v5, Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;->mAreaCode:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mPrefixInfo:Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;

    iget-object v5, v5, Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;->mNumberSubscriber:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mPrefixInfo:Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;

    iget-object v5, v5, Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;->mSuggestCountryISO:Ljava/lang/String;

    invoke-static {v4, v5}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 262
    .local v3, suggestNumber:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 263
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "+"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mPrefixInfo:Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;

    iget-object v5, v5, Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;->mCountryCode:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mPrefixInfo:Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;

    iget-object v5, v5, Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;->mAreaCode:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mPrefixInfo:Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;

    iget-object v5, v5, Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;->mNumberSubscriber:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 265
    :cond_7
    iget-object v4, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mSuggestNumberText:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 266
    iget-object v4, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mAreaCodeDescription:Landroid/widget/TextView;

    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 267
    iget-object v4, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mInputAreaEditText:Landroid/widget/EditText;

    invoke-virtual {v4, v10}, Landroid/widget/EditText;->setVisibility(I)V

    .line 268
    const/4 v4, 0x3

    iput v4, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mType:I

    .line 269
    iget-object v4, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4, v8}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    .line 270
    .restart local v0       #button:Landroid/widget/Button;
    if-eqz v0, :cond_3

    .line 271
    const-string v4, "onCountrySelected(), no need area code, enable button"

    invoke-static {v4}, Lcom/mediatek/calloption/InternationalDialogHandler;->log(Ljava/lang/String;)V

    .line 272
    invoke-virtual {v0, v9}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_1
.end method

.method public onHandledDialogDismiss()V
    .locals 1

    .prologue
    .line 377
    iget-object v0, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mCountrySelectDialogHandler:Lcom/mediatek/calloption/InternationalCountrySelectDialogHandler;

    if-eqz v0, :cond_0

    .line 378
    iget-object v0, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mCountrySelectDialogHandler:Lcom/mediatek/calloption/InternationalCountrySelectDialogHandler;

    invoke-virtual {v0}, Lcom/mediatek/calloption/InternationalCountrySelectDialogHandler;->dismissHandledDialog()V

    .line 380
    :cond_0
    return-void
.end method

.method public onShow(Landroid/content/DialogInterface;)V
    .locals 3
    .parameter "dialog"

    .prologue
    .line 362
    iget-object v1, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mAlertDialog:Landroid/app/AlertDialog;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    .line 363
    .local v0, button:Landroid/widget/Button;
    if-nez v0, :cond_0

    .line 374
    :goto_0
    return-void

    .line 366
    :cond_0
    const/4 v1, 0x4

    iget v2, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mType:I

    if-eq v1, v2, :cond_1

    const/4 v1, 0x6

    iget v2, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mType:I

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mRadioButton1:Landroid/widget/RadioButton;

    invoke-virtual {v1}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 368
    :cond_1
    const-string v1, "onShow(), disable button"

    invoke-static {v1}, Lcom/mediatek/calloption/InternationalDialogHandler;->log(Ljava/lang/String;)V

    .line 369
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 371
    :cond_2
    const-string v1, "onShow(), enable button"

    invoke-static {v1}, Lcom/mediatek/calloption/InternationalDialogHandler;->log(Ljava/lang/String;)V

    .line 372
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "input"
    .parameter "start"
    .parameter "before"
    .parameter "changeCount"

    .prologue
    .line 321
    return-void
.end method

.method public setAlertDialog(Landroid/app/AlertDialog;)V
    .locals 0
    .parameter "alertDialog"

    .prologue
    .line 357
    iput-object p1, p0, Lcom/mediatek/calloption/InternationalDialogHandler;->mAlertDialog:Landroid/app/AlertDialog;

    .line 358
    return-void
.end method
