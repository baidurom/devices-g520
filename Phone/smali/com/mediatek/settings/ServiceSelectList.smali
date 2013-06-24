.class public Lcom/mediatek/settings/ServiceSelectList;
.super Landroid/preference/DialogPreference;
.source "ServiceSelectList.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/settings/ServiceSelectList$SimItem;,
        Lcom/mediatek/settings/ServiceSelectList$SelectionListAdapter;
    }
.end annotation


# static fields
.field private static final DISPLAY_FIRST_FOUR:I = 0x1

.field private static final DISPLAY_LAST_FOUR:I = 0x2

.field private static final DISPLAY_NONE:I = 0x0

.field private static final PIN1_REQUEST_CODE:I = 0x12e

.field private static final TAG:Ljava/lang/String; = "Settings/ServiceSelectList"


# instance fields
.field private mAdapter:Lcom/mediatek/settings/ServiceSelectList$SelectionListAdapter;

.field private mAlertDialog:Landroid/app/AlertDialog;

.field private mContext:Landroid/content/Context;

.field private mEntries:[Ljava/lang/CharSequence;

.field private mEntryValues:[Ljava/lang/CharSequence;

.field private mFlater:Landroid/view/LayoutInflater;

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mInitValue:I

.field private mListView:Landroid/widget/ListView;

.field private mPhoneMgr:Lcom/android/phone/PhoneInterfaceManager;

.field private mSelected:I

.field private mSimItemList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/settings/ServiceSelectList$SimItem;",
            ">;"
        }
    .end annotation
.end field

.field private mSwitchTo:I

.field private mTelephonyManagerEx:Lcom/mediatek/telephony/TelephonyManagerEx;

.field private mValue:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 69
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/mediatek/settings/ServiceSelectList;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 70
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 72
    invoke-direct {p0, p1, p2}, Landroid/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 50
    iput v1, p0, Lcom/mediatek/settings/ServiceSelectList;->mSelected:I

    .line 51
    iput v1, p0, Lcom/mediatek/settings/ServiceSelectList;->mSwitchTo:I

    .line 52
    iput v1, p0, Lcom/mediatek/settings/ServiceSelectList;->mInitValue:I

    .line 55
    iput-object v3, p0, Lcom/mediatek/settings/ServiceSelectList;->mPhoneMgr:Lcom/android/phone/PhoneInterfaceManager;

    .line 66
    iput-object v3, p0, Lcom/mediatek/settings/ServiceSelectList;->mAlertDialog:Landroid/app/AlertDialog;

    .line 74
    iput-object p1, p0, Lcom/mediatek/settings/ServiceSelectList;->mContext:Landroid/content/Context;

    .line 75
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/settings/ServiceSelectList;->mFlater:Landroid/view/LayoutInflater;

    .line 77
    sget-object v1, Lcom/android/internal/R$styleable;->ListPreference:[I

    invoke-virtual {p1, p2, v1, v2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 79
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/settings/ServiceSelectList;->mEntries:[Ljava/lang/CharSequence;

    .line 80
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/settings/ServiceSelectList;->mEntryValues:[Ljava/lang/CharSequence;

    .line 81
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 83
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->phoneMgr:Lcom/android/phone/PhoneInterfaceManager;

    iput-object v1, p0, Lcom/mediatek/settings/ServiceSelectList;->mPhoneMgr:Lcom/android/phone/PhoneInterfaceManager;

    .line 84
    invoke-static {}, Lcom/mediatek/telephony/TelephonyManagerEx;->getDefault()Lcom/mediatek/telephony/TelephonyManagerEx;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/settings/ServiceSelectList;->mTelephonyManagerEx:Lcom/mediatek/telephony/TelephonyManagerEx;

    .line 85
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/settings/ServiceSelectList;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/mediatek/settings/ServiceSelectList;->mSimItemList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$002(Lcom/mediatek/settings/ServiceSelectList;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    iput-object p1, p0, Lcom/mediatek/settings/ServiceSelectList;->mSimItemList:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$100(Lcom/mediatek/settings/ServiceSelectList;)Landroid/view/LayoutInflater;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/mediatek/settings/ServiceSelectList;->mFlater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method static synthetic access$200(Lcom/mediatek/settings/ServiceSelectList;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget v0, p0, Lcom/mediatek/settings/ServiceSelectList;->mSelected:I

    return v0
.end method

.method static synthetic access$300(Lcom/mediatek/settings/ServiceSelectList;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/mediatek/settings/ServiceSelectList;->getSimStatusImge(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/mediatek/settings/ServiceSelectList;)Lcom/android/phone/PhoneInterfaceManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/mediatek/settings/ServiceSelectList;->mPhoneMgr:Lcom/android/phone/PhoneInterfaceManager;

    return-object v0
.end method

.method private getSimStatusImge(I)I
    .locals 1
    .parameter "state"

    .prologue
    .line 455
    packed-switch p1, :pswitch_data_0

    .line 471
    :pswitch_0
    const/4 v0, -0x1

    :goto_0
    return v0

    .line 457
    :pswitch_1
    const v0, 0x2020107

    goto :goto_0

    .line 459
    :pswitch_2
    const v0, 0x20200f4

    goto :goto_0

    .line 461
    :pswitch_3
    const v0, 0x20200ed

    goto :goto_0

    .line 463
    :pswitch_4
    const v0, 0x202010e

    goto :goto_0

    .line 465
    :pswitch_5
    const v0, 0x202010c

    goto :goto_0

    .line 467
    :pswitch_6
    const v0, 0x20200e4

    goto :goto_0

    .line 469
    :pswitch_7
    const v0, 0x202010d

    goto :goto_0

    .line 455
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method


# virtual methods
.method dismissDialogs()V
    .locals 3

    .prologue
    .line 176
    const-string v1, "Settings/ServiceSelectList"

    const-string v2, "disable the 3G switch."

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    invoke-virtual {p0}, Lcom/mediatek/settings/ServiceSelectList;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    .line 179
    .local v0, dialog:Landroid/app/Dialog;
    if-eqz v0, :cond_0

    .line 180
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 182
    :cond_0
    iget-object v1, p0, Lcom/mediatek/settings/ServiceSelectList;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/mediatek/settings/ServiceSelectList;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 183
    iget-object v1, p0, Lcom/mediatek/settings/ServiceSelectList;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 185
    :cond_1
    return-void
.end method

.method dismissSelf()V
    .locals 3

    .prologue
    .line 447
    const-string v1, "Settings/ServiceSelectList"

    const-string v2, "Dismiss the select list."

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    invoke-virtual {p0}, Lcom/mediatek/settings/ServiceSelectList;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    check-cast v0, Landroid/app/AlertDialog;

    .line 449
    .local v0, dialog:Landroid/app/AlertDialog;
    if-eqz v0, :cond_0

    .line 450
    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 452
    :cond_0
    return-void
.end method

.method public onBindView(Landroid/view/View;)V
    .locals 0
    .parameter "view"

    .prologue
    .line 89
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onBindView(Landroid/view/View;)V

    .line 90
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 130
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 131
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/mediatek/settings/ServiceSelectList;->onDialogClosed(Z)V

    .line 135
    :cond_0
    :goto_0
    return-void

    .line 132
    :cond_1
    const/4 v0, -0x2

    if-ne p2, v0, :cond_0

    .line 133
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mediatek/settings/ServiceSelectList;->onDialogClosed(Z)V

    goto :goto_0
.end method

.method protected onDialogClosed(Z)V
    .locals 3
    .parameter "positiveResult"

    .prologue
    .line 115
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onDialogClosed(Z)V

    .line 117
    const-string v0, "Settings/ServiceSelectList"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDialogClosed : mSelected = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/settings/ServiceSelectList;->mSelected:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    const-string v0, "Settings/ServiceSelectList"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDialogClosed : mInitValue = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/settings/ServiceSelectList;->mInitValue:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    if-eqz p1, :cond_0

    .line 121
    const-string v0, "Settings/ServiceSelectList"

    const-string v1, "callChangeListener"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    iget-object v0, p0, Lcom/mediatek/settings/ServiceSelectList;->mSimItemList:Ljava/util/List;

    iget v1, p0, Lcom/mediatek/settings/ServiceSelectList;->mSelected:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/settings/ServiceSelectList$SimItem;

    iget-wide v0, v0, Lcom/mediatek/settings/ServiceSelectList$SimItem;->mSimID:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/settings/ServiceSelectList;->callChangeListener(Ljava/lang/Object;)Z

    .line 123
    iget v0, p0, Lcom/mediatek/settings/ServiceSelectList;->mSelected:I

    iput v0, p0, Lcom/mediatek/settings/ServiceSelectList;->mInitValue:I

    .line 126
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/settings/ServiceSelectList;->dismissSelf()V

    .line 127
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
    .parameter
    .parameter "v"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 138
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const-string v1, "Settings/ServiceSelectList"

    const-string v2, "onclick"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    const-string v1, "Settings/ServiceSelectList"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "positon is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    const-string v1, "Settings/ServiceSelectList"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "current select is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/mediatek/settings/ServiceSelectList;->mSelected:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    invoke-virtual {p2}, Landroid/view/View;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 173
    :cond_0
    :goto_0
    return-void

    .line 144
    :cond_1
    iget v1, p0, Lcom/mediatek/settings/ServiceSelectList;->mSelected:I

    if-ne p3, v1, :cond_2

    .line 145
    invoke-virtual {p0}, Lcom/mediatek/settings/ServiceSelectList;->dismissSelf()V

    goto :goto_0

    .line 148
    :cond_2
    iget-object v1, p0, Lcom/mediatek/settings/ServiceSelectList;->mSimItemList:Ljava/util/List;

    invoke-interface {v1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/settings/ServiceSelectList$SimItem;

    .line 149
    .local v0, simItem:Lcom/mediatek/settings/ServiceSelectList$SimItem;
    iget-wide v1, v0, Lcom/mediatek/settings/ServiceSelectList$SimItem;->mSimID:J

    const-wide/16 v3, -0x2

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    .line 152
    iput p3, p0, Lcom/mediatek/settings/ServiceSelectList;->mSelected:I

    .line 153
    const-string v1, "Settings/ServiceSelectList"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Switch to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/mediatek/settings/ServiceSelectList;->mSelected:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/mediatek/settings/ServiceSelectList;->onDialogClosed(Z)V

    goto :goto_0
.end method

.method protected onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
    .locals 7
    .parameter "builder"

    .prologue
    const/4 v6, 0x0

    const/4 v2, 0x0

    .line 95
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V

    .line 96
    invoke-virtual {p0}, Lcom/mediatek/settings/ServiceSelectList;->refreshList()V

    .line 97
    new-instance v0, Lcom/mediatek/settings/ServiceSelectList$SelectionListAdapter;

    invoke-virtual {p0}, Lcom/mediatek/settings/ServiceSelectList;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/mediatek/settings/ServiceSelectList$SelectionListAdapter;-><init>(Lcom/mediatek/settings/ServiceSelectList;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mediatek/settings/ServiceSelectList;->mAdapter:Lcom/mediatek/settings/ServiceSelectList$SelectionListAdapter;

    .line 98
    new-instance v0, Landroid/widget/ListView;

    iget-object v1, p0, Lcom/mediatek/settings/ServiceSelectList;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mediatek/settings/ServiceSelectList;->mListView:Landroid/widget/ListView;

    .line 99
    iget-object v0, p0, Lcom/mediatek/settings/ServiceSelectList;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/mediatek/settings/ServiceSelectList;->mAdapter:Lcom/mediatek/settings/ServiceSelectList$SelectionListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 100
    iget-object v0, p0, Lcom/mediatek/settings/ServiceSelectList;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 101
    iget-object v0, p0, Lcom/mediatek/settings/ServiceSelectList;->mAdapter:Lcom/mediatek/settings/ServiceSelectList$SelectionListAdapter;

    invoke-virtual {v0}, Lcom/mediatek/settings/ServiceSelectList$SelectionListAdapter;->getHas3GService()I

    move-result v0

    iput v0, p0, Lcom/mediatek/settings/ServiceSelectList;->mSelected:I

    .line 103
    iget-object v0, p0, Lcom/mediatek/settings/ServiceSelectList;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 104
    iget-object v0, p0, Lcom/mediatek/settings/ServiceSelectList;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setCacheColorHint(I)V

    .line 106
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setInverseBackgroundForced(Z)Landroid/app/AlertDialog$Builder;

    .line 107
    iget-object v1, p0, Lcom/mediatek/settings/ServiceSelectList;->mListView:Landroid/widget/ListView;

    move-object v0, p1

    move v3, v2

    move v4, v2

    move v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;IIII)Landroid/app/AlertDialog$Builder;

    .line 109
    const v0, 0x7f0d01bb

    invoke-virtual {p1, v0, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 110
    invoke-virtual {p1, v6, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 111
    return-void
.end method

.method public refreshList()V
    .locals 15

    .prologue
    const/4 v3, 0x0

    const/4 v14, 0x1

    .line 188
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 189
    .local v11, itemList:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/settings/ServiceSelectList$SimItem;>;"
    iget-object v1, p0, Lcom/mediatek/settings/ServiceSelectList;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/provider/Telephony$SIMInfo;->getInsertedSIMList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v12

    .line 190
    .local v12, list:Ljava/util/List;,"Ljava/util/List<Landroid/provider/Telephony$SIMInfo;>;"
    new-instance v1, Lcom/mediatek/settings/CallSettings$SIMInfoComparable;

    invoke-direct {v1}, Lcom/mediatek/settings/CallSettings$SIMInfoComparable;-><init>()V

    invoke-static {v12, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 192
    const/4 v13, 0x0

    .line 193
    .local v13, state:I
    const/4 v10, 0x1

    .line 194
    .local v10, isAllRadioOff:Z
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/provider/Telephony$SIMInfo;

    .line 195
    .local v9, info:Landroid/provider/Telephony$SIMInfo;
    if-eqz v9, :cond_0

    .line 196
    new-instance v0, Lcom/mediatek/settings/ServiceSelectList$SimItem;

    invoke-direct {v0, p0, v9}, Lcom/mediatek/settings/ServiceSelectList$SimItem;-><init>(Lcom/mediatek/settings/ServiceSelectList;Landroid/provider/Telephony$SIMInfo;)V

    .line 198
    .local v0, simitem:Lcom/mediatek/settings/ServiceSelectList$SimItem;
    :try_start_0
    const-string v1, "phone"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v8

    .line 199
    .local v8, iTelephony:Lcom/android/internal/telephony/ITelephony;
    if-eqz v8, :cond_1

    .line 203
    invoke-interface {v8}, Lcom/android/internal/telephony/ITelephony;->getSimIndicatorState()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v13

    .line 209
    .end local v8           #iTelephony:Lcom/android/internal/telephony/ITelephony;
    :cond_1
    :goto_1
    iput v13, v0, Lcom/mediatek/settings/ServiceSelectList$SimItem;->mState:I

    .line 210
    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 211
    if-ne v13, v14, :cond_2

    move v10, v14

    :goto_2
    goto :goto_0

    .line 206
    :catch_0
    move-exception v6

    .line 207
    .local v6, e:Landroid/os/RemoteException;
    const-string v1, "Settings/ServiceSelectList"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[e = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .end local v6           #e:Landroid/os/RemoteException;
    :cond_2
    move v10, v3

    .line 211
    goto :goto_2

    .line 215
    .end local v0           #simitem:Lcom/mediatek/settings/ServiceSelectList$SimItem;
    .end local v9           #info:Landroid/provider/Telephony$SIMInfo;
    :cond_3
    iget-object v1, p0, Lcom/mediatek/settings/ServiceSelectList;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f0d00c1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 216
    .local v2, offText:Ljava/lang/String;
    new-instance v0, Lcom/mediatek/settings/ServiceSelectList$SimItem;

    const-wide/16 v4, -0x1

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/mediatek/settings/ServiceSelectList$SimItem;-><init>(Lcom/mediatek/settings/ServiceSelectList;Ljava/lang/String;IJ)V

    .line 217
    .restart local v0       #simitem:Lcom/mediatek/settings/ServiceSelectList$SimItem;
    if-eqz v10, :cond_4

    .line 218
    iput v14, v0, Lcom/mediatek/settings/ServiceSelectList$SimItem;->mState:I

    .line 220
    :cond_4
    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 221
    iput-object v11, p0, Lcom/mediatek/settings/ServiceSelectList;->mSimItemList:Ljava/util/List;

    .line 223
    iget-object v1, p0, Lcom/mediatek/settings/ServiceSelectList;->mAdapter:Lcom/mediatek/settings/ServiceSelectList$SelectionListAdapter;

    if-eqz v1, :cond_5

    .line 224
    iget-object v1, p0, Lcom/mediatek/settings/ServiceSelectList;->mAdapter:Lcom/mediatek/settings/ServiceSelectList$SelectionListAdapter;

    invoke-virtual {v1}, Lcom/mediatek/settings/ServiceSelectList$SelectionListAdapter;->getHas3GService()I

    move-result v1

    iput v1, p0, Lcom/mediatek/settings/ServiceSelectList;->mSelected:I

    .line 225
    iget-object v1, p0, Lcom/mediatek/settings/ServiceSelectList;->mAdapter:Lcom/mediatek/settings/ServiceSelectList$SelectionListAdapter;

    invoke-virtual {v1}, Lcom/mediatek/settings/ServiceSelectList$SelectionListAdapter;->notifyDataSetChanged()V

    .line 227
    :cond_5
    return-void
.end method

.method setInitValue(I)V
    .locals 0
    .parameter "value"

    .prologue
    .line 403
    iput p1, p0, Lcom/mediatek/settings/ServiceSelectList;->mInitValue:I

    .line 404
    iput p1, p0, Lcom/mediatek/settings/ServiceSelectList;->mSelected:I

    .line 405
    return-void
.end method

.method setRadioCheched(I)V
    .locals 5
    .parameter "index"

    .prologue
    .line 390
    iget-object v4, p0, Lcom/mediatek/settings/ServiceSelectList;->mListView:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->getCount()I

    move-result v3

    .line 392
    .local v3, listSize:I
    const/4 v2, 0x0

    .local v2, k:I
    :goto_0
    if-ge v2, v3, :cond_2

    .line 394
    iget-object v4, p0, Lcom/mediatek/settings/ServiceSelectList;->mListView:Landroid/widget/ListView;

    invoke-virtual {v4, v2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 395
    .local v1, itemView:Landroid/view/View;
    const v4, 0x7f0800dc

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    .line 396
    .local v0, btn:Landroid/widget/RadioButton;
    if-eqz v0, :cond_0

    .line 397
    if-ne v2, p1, :cond_1

    const/4 v4, 0x1

    :goto_1
    invoke-virtual {v0, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 392
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 397
    :cond_1
    const/4 v4, 0x0

    goto :goto_1

    .line 400
    .end local v0           #btn:Landroid/widget/RadioButton;
    .end local v1           #itemView:Landroid/view/View;
    :cond_2
    return-void
.end method
