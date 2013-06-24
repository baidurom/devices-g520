.class public Lcom/mediatek/phone/SimInfoPreference;
.super Landroid/preference/Preference;
.source "SimInfoPreference.java"


# static fields
.field private static final DISPLAY_FIRST_FOUR:I = 0x1

.field private static final DISPLAY_LAST_FOUR:I = 0x2

.field private static final DISPLAY_NONE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "SimInfoPreference"


# instance fields
.field private mChecked:Z

.field private mColor:I

.field private mContext:Landroid/content/Context;

.field private mName:Ljava/lang/String;

.field private mNeedCheckbox:Z

.field private mNumDisplayFormat:I

.field private mSimNum:Ljava/lang/String;

.field protected final mSlotIndex:I

.field private mStatus:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IIIIJZ)V
    .locals 2
    .parameter "context"
    .parameter "name"
    .parameter "number"
    .parameter "SimSlot"
    .parameter "status"
    .parameter "color"
    .parameter "DisplayNumberFormat"
    .parameter "key"
    .parameter "needCheckBox"

    .prologue
    const/4 v1, 0x1

    .line 51
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    iput-boolean v1, p0, Lcom/mediatek/phone/SimInfoPreference;->mChecked:Z

    .line 41
    iput-boolean v1, p0, Lcom/mediatek/phone/SimInfoPreference;->mNeedCheckbox:Z

    .line 52
    iput-object p2, p0, Lcom/mediatek/phone/SimInfoPreference;->mName:Ljava/lang/String;

    .line 53
    iput-object p3, p0, Lcom/mediatek/phone/SimInfoPreference;->mSimNum:Ljava/lang/String;

    .line 54
    iput p4, p0, Lcom/mediatek/phone/SimInfoPreference;->mSlotIndex:I

    .line 55
    iput p5, p0, Lcom/mediatek/phone/SimInfoPreference;->mStatus:I

    .line 56
    iput p6, p0, Lcom/mediatek/phone/SimInfoPreference;->mColor:I

    .line 57
    iput p7, p0, Lcom/mediatek/phone/SimInfoPreference;->mNumDisplayFormat:I

    .line 58
    iput-boolean p10, p0, Lcom/mediatek/phone/SimInfoPreference;->mNeedCheckbox:Z

    .line 59
    iput-object p1, p0, Lcom/mediatek/phone/SimInfoPreference;->mContext:Landroid/content/Context;

    .line 60
    invoke-static {p8, p9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/phone/SimInfoPreference;->setKey(Ljava/lang/String;)V

    .line 63
    const v0, 0x7f040033

    invoke-virtual {p0, v0}, Lcom/mediatek/phone/SimInfoPreference;->setLayoutResource(I)V

    .line 65
    invoke-direct {p0}, Lcom/mediatek/phone/SimInfoPreference;->displayNameAndNumber()V

    .line 69
    return-void
.end method

.method private displayNameAndNumber()V
    .locals 3

    .prologue
    .line 83
    iget-object v0, p0, Lcom/mediatek/phone/SimInfoPreference;->mName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/mediatek/phone/SimInfoPreference;->mName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/mediatek/phone/SimInfoPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 86
    :cond_0
    iget-object v0, p0, Lcom/mediatek/phone/SimInfoPreference;->mSimNum:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mediatek/phone/SimInfoPreference;->mSimNum:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1

    .line 87
    iget-object v0, p0, Lcom/mediatek/phone/SimInfoPreference;->mSimNum:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/mediatek/phone/SimInfoPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 88
    const-string v0, "SimInfoPreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mSimNum is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/phone/SimInfoPreference;->mSimNum:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    :goto_0
    return-void

    .line 90
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mediatek/phone/SimInfoPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 91
    const-string v0, "SimInfoPreference"

    const-string v1, "mSimNum is null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method getCheck()Z
    .locals 1

    .prologue
    .line 198
    iget-boolean v0, p0, Lcom/mediatek/phone/SimInfoPreference;->mChecked:Z

    return v0
.end method

.method public getView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 99
    invoke-super {p0, p1, p2}, Landroid/preference/Preference;->getView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 100
    .local v6, view:Landroid/view/View;
    invoke-direct {p0}, Lcom/mediatek/phone/SimInfoPreference;->displayNameAndNumber()V

    .line 103
    const v8, 0x7f0800ca

    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 105
    .local v1, imageStatus:Landroid/widget/ImageView;
    if-eqz v1, :cond_0

    .line 107
    iget v8, p0, Lcom/mediatek/phone/SimInfoPreference;->mStatus:I

    invoke-static {v8}, Lcom/android/phone/Utils;->getStatusResource(I)I

    move-result v2

    .line 109
    .local v2, res:I
    const/4 v8, -0x1

    if-ne v2, v8, :cond_6

    .line 110
    const/16 v8, 0x8

    invoke-virtual {v1, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 116
    .end local v2           #res:I
    :cond_0
    :goto_0
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v8

    iget-object v8, v8, Lcom/android/phone/PhoneApp;->phoneMgr:Lcom/android/phone/PhoneInterfaceManager;

    invoke-virtual {v8}, Lcom/android/phone/PhoneInterfaceManager;->get3GCapabilitySIM()I

    move-result v3

    .line 117
    .local v3, simId:I
    const-string v8, "SimInfoPreference"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mSlotIndex is: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/mediatek/phone/SimInfoPreference;->mSlotIndex:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    const-string v8, "SimInfoPreference"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "simId is: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    const v8, 0x7f0800dd

    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 121
    .local v4, text3G:Landroid/widget/TextView;
    if-eqz v4, :cond_2

    .line 123
    const/4 v8, -0x1

    if-eq v3, v8, :cond_1

    iget v8, p0, Lcom/mediatek/phone/SimInfoPreference;->mSlotIndex:I

    if-eq v3, v8, :cond_2

    .line 125
    :cond_1
    const/16 v8, 0x8

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 129
    :cond_2
    const v8, 0x7f0800c9

    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/RelativeLayout;

    .line 131
    .local v7, viewSim:Landroid/widget/RelativeLayout;
    if-eqz v7, :cond_3

    .line 133
    iget v8, p0, Lcom/mediatek/phone/SimInfoPreference;->mColor:I

    invoke-static {v8}, Lcom/android/phone/Utils;->getSimColorResource(I)I

    move-result v2

    .line 135
    .restart local v2       #res:I
    if-gez v2, :cond_7

    .line 137
    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/RelativeLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 145
    .end local v2           #res:I
    :cond_3
    :goto_1
    const v8, 0x7f0800de

    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 146
    .local v0, ckRadioOn:Landroid/widget/CheckBox;
    const-string v8, "SimInfoPreference"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "ckRadioOn.setChecked "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-boolean v10, p0, Lcom/mediatek/phone/SimInfoPreference;->mChecked:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    if-eqz v0, :cond_4

    .line 149
    iget-boolean v8, p0, Lcom/mediatek/phone/SimInfoPreference;->mNeedCheckbox:Z

    const/4 v9, 0x1

    if-ne v8, v9, :cond_8

    .line 151
    iget-boolean v8, p0, Lcom/mediatek/phone/SimInfoPreference;->mChecked:Z

    invoke-virtual {v0, v8}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 159
    :cond_4
    :goto_2
    const v8, 0x7f0800cb

    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 160
    .local v5, textNum:Landroid/widget/TextView;
    if-eqz v5, :cond_5

    iget-object v8, p0, Lcom/mediatek/phone/SimInfoPreference;->mSimNum:Ljava/lang/String;

    if-eqz v8, :cond_5

    .line 162
    iget v8, p0, Lcom/mediatek/phone/SimInfoPreference;->mNumDisplayFormat:I

    packed-switch v8, :pswitch_data_0

    .line 189
    :cond_5
    :goto_3
    return-object v6

    .line 112
    .end local v0           #ckRadioOn:Landroid/widget/CheckBox;
    .end local v3           #simId:I
    .end local v4           #text3G:Landroid/widget/TextView;
    .end local v5           #textNum:Landroid/widget/TextView;
    .end local v7           #viewSim:Landroid/widget/RelativeLayout;
    .restart local v2       #res:I
    :cond_6
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 141
    .restart local v3       #simId:I
    .restart local v4       #text3G:Landroid/widget/TextView;
    .restart local v7       #viewSim:Landroid/widget/RelativeLayout;
    :cond_7
    invoke-virtual {v7, v2}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    goto :goto_1

    .line 155
    .end local v2           #res:I
    .restart local v0       #ckRadioOn:Landroid/widget/CheckBox;
    :cond_8
    const/16 v8, 0x8

    invoke-virtual {v0, v8}, Landroid/widget/CheckBox;->setVisibility(I)V

    goto :goto_2

    .line 164
    .restart local v5       #textNum:Landroid/widget/TextView;
    :pswitch_0
    const/16 v8, 0x8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3

    .line 170
    :pswitch_1
    iget-object v8, p0, Lcom/mediatek/phone/SimInfoPreference;->mSimNum:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    const/4 v9, 0x4

    if-lt v8, v9, :cond_9

    .line 171
    iget-object v8, p0, Lcom/mediatek/phone/SimInfoPreference;->mSimNum:Ljava/lang/String;

    const/4 v9, 0x0

    const/4 v10, 0x4

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 173
    :cond_9
    iget-object v8, p0, Lcom/mediatek/phone/SimInfoPreference;->mSimNum:Ljava/lang/String;

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 179
    :pswitch_2
    iget-object v8, p0, Lcom/mediatek/phone/SimInfoPreference;->mSimNum:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    const/4 v9, 0x4

    if-lt v8, v9, :cond_a

    .line 180
    iget-object v8, p0, Lcom/mediatek/phone/SimInfoPreference;->mSimNum:Ljava/lang/String;

    iget-object v9, p0, Lcom/mediatek/phone/SimInfoPreference;->mSimNum:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit8 v9, v9, -0x4

    invoke-virtual {v8, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 182
    :cond_a
    iget-object v8, p0, Lcom/mediatek/phone/SimInfoPreference;->mSimNum:Ljava/lang/String;

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 162
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method setCheck(Z)V
    .locals 0
    .parameter "bCheck"

    .prologue
    .line 193
    iput-boolean p1, p0, Lcom/mediatek/phone/SimInfoPreference;->mChecked:Z

    .line 194
    invoke-virtual {p0}, Lcom/mediatek/phone/SimInfoPreference;->notifyChanged()V

    .line 195
    return-void
.end method

.method setColor(I)V
    .locals 0
    .parameter "color"

    .prologue
    .line 214
    iput p1, p0, Lcom/mediatek/phone/SimInfoPreference;->mColor:I

    .line 215
    invoke-virtual {p0}, Lcom/mediatek/phone/SimInfoPreference;->notifyChanged()V

    .line 216
    return-void
.end method

.method setName(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 208
    iput-object p1, p0, Lcom/mediatek/phone/SimInfoPreference;->mName:Ljava/lang/String;

    .line 209
    invoke-virtual {p0}, Lcom/mediatek/phone/SimInfoPreference;->notifyChanged()V

    .line 211
    return-void
.end method

.method setNumDisplayFormat(I)V
    .locals 0
    .parameter "format"

    .prologue
    .line 219
    iput p1, p0, Lcom/mediatek/phone/SimInfoPreference;->mNumDisplayFormat:I

    .line 220
    invoke-virtual {p0}, Lcom/mediatek/phone/SimInfoPreference;->notifyChanged()V

    .line 221
    return-void
.end method

.method setNumber(Ljava/lang/String;)V
    .locals 0
    .parameter "number"

    .prologue
    .line 224
    iput-object p1, p0, Lcom/mediatek/phone/SimInfoPreference;->mSimNum:Ljava/lang/String;

    .line 225
    invoke-virtual {p0}, Lcom/mediatek/phone/SimInfoPreference;->notifyChanged()V

    .line 226
    return-void
.end method

.method setStatus(I)V
    .locals 0
    .parameter "status"

    .prologue
    .line 203
    iput p1, p0, Lcom/mediatek/phone/SimInfoPreference;->mStatus:I

    .line 204
    invoke-virtual {p0}, Lcom/mediatek/phone/SimInfoPreference;->notifyChanged()V

    .line 205
    return-void
.end method

.method public updateInfo(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 0
    .parameter "name"
    .parameter "number"
    .parameter "color"
    .parameter "DisplayNumberFormat"

    .prologue
    .line 73
    iput-object p1, p0, Lcom/mediatek/phone/SimInfoPreference;->mName:Ljava/lang/String;

    .line 74
    iput-object p2, p0, Lcom/mediatek/phone/SimInfoPreference;->mSimNum:Ljava/lang/String;

    .line 76
    iput p3, p0, Lcom/mediatek/phone/SimInfoPreference;->mColor:I

    .line 77
    iput p4, p0, Lcom/mediatek/phone/SimInfoPreference;->mNumDisplayFormat:I

    .line 78
    invoke-direct {p0}, Lcom/mediatek/phone/SimInfoPreference;->displayNameAndNumber()V

    .line 79
    return-void
.end method
