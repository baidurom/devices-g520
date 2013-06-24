.class public Lcom/mediatek/settings/VTAdvancedSetting;
.super Landroid/preference/PreferenceActivity;
.source "VTAdvancedSetting.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static final BUTTON_VT_AUTO_DROPBACK_KEY:Ljava/lang/String; = "button_vt_auto_dropback_key"

.field private static final BUTTON_VT_CB_KEY:Ljava/lang/String; = "button_cb_expand_key"

.field private static final BUTTON_VT_CF_KEY:Ljava/lang/String; = "button_cf_expand_key"

.field private static final BUTTON_VT_ENABLE_BACK_CAMERA_KEY:Ljava/lang/String; = "button_vt_enable_back_camera_key"

.field private static final BUTTON_VT_ENABLE_PEER_REPLACE_KEY:Ljava/lang/String; = "button_vt_enable_peer_replace_key"

.field private static final BUTTON_VT_MORE_KEY:Ljava/lang/String; = "button_more_expand_key"

.field private static final BUTTON_VT_MO_LOCAL_VIDEO_DISPLAY_KEY:Ljava/lang/String; = "button_vt_mo_local_video_display_key"

.field private static final BUTTON_VT_MT_LOCAL_VIDEO_DISPLAY_KEY:Ljava/lang/String; = "button_vt_mt_local_video_display_key"

.field private static final BUTTON_VT_PEER_BIGGER_KEY:Ljava/lang/String; = "button_vt_peer_bigger_key"

.field private static final BUTTON_VT_PEER_REPLACE_KEY:Ljava/lang/String; = "button_vt_replace_peer_expand_key"

.field private static final BUTTON_VT_REPLACE_KEY:Ljava/lang/String; = "button_vt_replace_expand_key"

.field private static final CHECKBOX_RING_ONLY_ONCE:Ljava/lang/String; = "ring_only_once"

.field private static final DBG:Z = true

.field private static final LOG_TAG:Ljava/lang/String; = "Settings/VTAdvancedSetting"

.field public static final NAME_PIC_TO_REPLACE_LOCAL_VIDEO_DEFAULT:Ljava/lang/String; = "pic_to_replace_local_video_default"

.field public static final NAME_PIC_TO_REPLACE_LOCAL_VIDEO_USERSELECT:Ljava/lang/String; = "pic_to_replace_local_video_userselect"

.field public static final NAME_PIC_TO_REPLACE_PEER_VIDEO_DEFAULT:Ljava/lang/String; = "pic_to_replace_peer_video_default"

.field public static final NAME_PIC_TO_REPLACE_PEER_VIDEO_USERSELECT:Ljava/lang/String; = "pic_to_replace_peer_video_userselect"

.field public static final REQUESTCODE_PICTRUE_PICKED_WITH_DATA:I = 0xbcd

.field private static final SELECT_DEFAULT_PICTURE:Ljava/lang/String; = "0"

.field public static final SELECT_DEFAULT_PICTURE2:Ljava/lang/String; = "0"

.field private static final SELECT_MY_PICTURE:Ljava/lang/String; = "2"

.field public static final SELECT_MY_PICTURE2:Ljava/lang/String; = "1"


# instance fields
.field private mButtonCb:Landroid/preference/Preference;

.field private mButtonCf:Landroid/preference/Preference;

.field private mButtonMore:Landroid/preference/Preference;

.field private mButtonVTAutoDropBack:Landroid/preference/CheckBoxPreference;

.field private mButtonVTEnablePeerReplace:Landroid/preference/CheckBoxPreference;

.field private mButtonVTEnablebackCamer:Landroid/preference/CheckBoxPreference;

.field private mButtonVTMoVideo:Landroid/preference/CheckBoxPreference;

.field private mButtonVTMtVideo:Landroid/preference/ListPreference;

.field private mButtonVTPeerBigger:Landroid/preference/CheckBoxPreference;

.field private mButtonVTPeerReplace:Landroid/preference/ListPreference;

.field private mButtonVTReplace:Landroid/preference/ListPreference;

.field private mCheckBoxRingOnlyOnce:Landroid/preference/CheckBoxPreference;

.field private mPreCfr:Lcom/mediatek/settings/PreCheckForRunning;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mSimId:I

.field private mWhichToSave:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 76
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 96
    iput v1, p0, Lcom/mediatek/settings/VTAdvancedSetting;->mWhichToSave:I

    .line 103
    iput v1, p0, Lcom/mediatek/settings/VTAdvancedSetting;->mSimId:I

    .line 116
    iput-object v0, p0, Lcom/mediatek/settings/VTAdvancedSetting;->mButtonCf:Landroid/preference/Preference;

    .line 117
    iput-object v0, p0, Lcom/mediatek/settings/VTAdvancedSetting;->mButtonCb:Landroid/preference/Preference;

    .line 118
    iput-object v0, p0, Lcom/mediatek/settings/VTAdvancedSetting;->mButtonMore:Landroid/preference/Preference;

    .line 127
    iput-object v0, p0, Lcom/mediatek/settings/VTAdvancedSetting;->mPreCfr:Lcom/mediatek/settings/PreCheckForRunning;

    .line 133
    new-instance v0, Lcom/mediatek/settings/VTAdvancedSetting$1;

    invoke-direct {v0, p0}, Lcom/mediatek/settings/VTAdvancedSetting$1;-><init>(Lcom/mediatek/settings/VTAdvancedSetting;)V

    iput-object v0, p0, Lcom/mediatek/settings/VTAdvancedSetting;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/settings/VTAdvancedSetting;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/mediatek/settings/VTAdvancedSetting;->setScreenEnabled()V

    return-void
.end method

.method static synthetic access$100(Ljava/lang/String;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 76
    invoke-static {p0}, Lcom/mediatek/settings/VTAdvancedSetting;->log(Ljava/lang/String;)V

    return-void
.end method

.method public static getPicPathDefault()Ljava/lang/String;
    .locals 1

    .prologue
    .line 390
    const-string v0, "/data/data/com.android.phone/pic_to_replace_local_video_default.vt"

    return-object v0
.end method

.method public static getPicPathDefault2()Ljava/lang/String;
    .locals 1

    .prologue
    .line 398
    const-string v0, "/data/data/com.android.phone/pic_to_replace_peer_video_default.vt"

    return-object v0
.end method

.method public static getPicPathUserselect()Ljava/lang/String;
    .locals 1

    .prologue
    .line 394
    const-string v0, "/data/data/com.android.phone/pic_to_replace_local_video_userselect.vt"

    return-object v0
.end method

.method public static getPicPathUserselect2()Ljava/lang/String;
    .locals 1

    .prologue
    .line 402
    const-string v0, "/data/data/com.android.phone/pic_to_replace_peer_video_userselect.vt"

    return-object v0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 130
    const-string v0, "Settings/VTAdvancedSetting"

    invoke-static {v0, p0}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    return-void
.end method

.method private setScreenEnabled()V
    .locals 10

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 438
    invoke-virtual {p0}, Lcom/mediatek/settings/VTAdvancedSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "airplane_mode_on"

    const/4 v9, -0x1

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-ne v7, v5, :cond_0

    move v0, v5

    .line 441
    .local v0, airplaneModeOn:Z
    :goto_0
    invoke-static {p0}, Landroid/provider/Telephony$SIMInfo;->getInsertedSIMList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v2

    .line 442
    .local v2, insertSim:Ljava/util/List;,"Ljava/util/List<Landroid/provider/Telephony$SIMInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    if-nez v7, :cond_1

    .line 443
    invoke-static {p0}, Lcom/mediatek/settings/CallSettings;->goUpToTopLevelSetting(Landroid/app/Activity;)V

    .line 464
    :goto_1
    return-void

    .end local v0           #airplaneModeOn:Z
    .end local v2           #insertSim:Ljava/util/List;,"Ljava/util/List<Landroid/provider/Telephony$SIMInfo;>;"
    :cond_0
    move v0, v6

    .line 438
    goto :goto_0

    .line 444
    .restart local v0       #airplaneModeOn:Z
    .restart local v2       #insertSim:Ljava/util/List;,"Ljava/util/List<Landroid/provider/Telephony$SIMInfo;>;"
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    if-ne v7, v5, :cond_7

    .line 445
    if-nez v0, :cond_2

    iget v7, p0, Lcom/mediatek/settings/VTAdvancedSetting;->mSimId:I

    invoke-static {v7}, Lcom/mediatek/settings/CallSettings;->isRadioOn(I)Z

    move-result v7

    if-eqz v7, :cond_2

    move v4, v5

    .line 446
    .local v4, isRadioOn:Z
    :goto_2
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v7

    iget-object v7, v7, Lcom/android/phone/PhoneApp;->phoneMgr:Lcom/android/phone/PhoneInterfaceManager;

    invoke-virtual {v7}, Lcom/android/phone/PhoneInterfaceManager;->get3GCapabilitySIM()I

    move-result v1

    .line 447
    .local v1, capability3G:I
    if-ltz v1, :cond_3

    move v3, v5

    .line 449
    .local v3, is3GEnable:Z
    :goto_3
    iget-object v7, p0, Lcom/mediatek/settings/VTAdvancedSetting;->mButtonVTReplace:Landroid/preference/ListPreference;

    invoke-virtual {v7, v3}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 450
    iget-object v7, p0, Lcom/mediatek/settings/VTAdvancedSetting;->mButtonVTPeerReplace:Landroid/preference/ListPreference;

    invoke-virtual {v7, v3}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 451
    iget-object v7, p0, Lcom/mediatek/settings/VTAdvancedSetting;->mButtonVTEnablePeerReplace:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v7, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 452
    iget-object v7, p0, Lcom/mediatek/settings/VTAdvancedSetting;->mButtonVTMoVideo:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v7, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 453
    iget-object v7, p0, Lcom/mediatek/settings/VTAdvancedSetting;->mButtonVTMtVideo:Landroid/preference/ListPreference;

    invoke-virtual {v7, v3}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 454
    iget-object v7, p0, Lcom/mediatek/settings/VTAdvancedSetting;->mButtonVTEnablebackCamer:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v7, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 455
    iget-object v7, p0, Lcom/mediatek/settings/VTAdvancedSetting;->mButtonVTPeerBigger:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v7, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 456
    iget-object v7, p0, Lcom/mediatek/settings/VTAdvancedSetting;->mButtonVTAutoDropBack:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v7, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 458
    iget-object v8, p0, Lcom/mediatek/settings/VTAdvancedSetting;->mButtonCf:Landroid/preference/Preference;

    if-eqz v4, :cond_4

    if-eqz v3, :cond_4

    move v7, v5

    :goto_4
    invoke-virtual {v8, v7}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 459
    iget-object v8, p0, Lcom/mediatek/settings/VTAdvancedSetting;->mButtonCb:Landroid/preference/Preference;

    if-eqz v4, :cond_5

    if-eqz v3, :cond_5

    move v7, v5

    :goto_5
    invoke-virtual {v8, v7}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 460
    iget-object v7, p0, Lcom/mediatek/settings/VTAdvancedSetting;->mButtonMore:Landroid/preference/Preference;

    if-eqz v4, :cond_6

    if-eqz v3, :cond_6

    :goto_6
    invoke-virtual {v7, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_1

    .end local v1           #capability3G:I
    .end local v3           #is3GEnable:Z
    .end local v4           #isRadioOn:Z
    :cond_2
    move v4, v6

    .line 445
    goto :goto_2

    .restart local v1       #capability3G:I
    .restart local v4       #isRadioOn:Z
    :cond_3
    move v3, v6

    .line 447
    goto :goto_3

    .restart local v3       #is3GEnable:Z
    :cond_4
    move v7, v6

    .line 458
    goto :goto_4

    :cond_5
    move v7, v6

    .line 459
    goto :goto_5

    :cond_6
    move v5, v6

    .line 460
    goto :goto_6

    .line 462
    .end local v1           #capability3G:I
    .end local v3           #is3GEnable:Z
    .end local v4           #isRadioOn:Z
    :cond_7
    invoke-static {p0}, Lcom/mediatek/settings/CallSettings;->goUpToTopLevelSetting(Landroid/app/Activity;)V

    goto :goto_1
.end method

.method private showDialogDefaultPic(Ljava/lang/String;)V
    .locals 7
    .parameter "filename"

    .prologue
    const/4 v6, -0x2

    .line 287
    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 288
    .local v2, mImg:Landroid/widget/ImageView;
    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 289
    .local v1, mBitmap:Landroid/graphics/Bitmap;
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 290
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 291
    .local v0, linear:Landroid/widget/LinearLayout;
    new-instance v5, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v5, v6, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 292
    const/16 v5, 0x11

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 294
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 295
    .local v4, myBuilder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v4, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 296
    const v5, 0x7f0d0031

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 297
    const v5, 0x104000a

    new-instance v6, Lcom/mediatek/settings/VTAdvancedSetting$2;

    invoke-direct {v6, p0}, Lcom/mediatek/settings/VTAdvancedSetting$2;-><init>(Lcom/mediatek/settings/VTAdvancedSetting;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 305
    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    .line 306
    .local v3, myAlertDialog:Landroid/app/AlertDialog;
    new-instance v5, Lcom/mediatek/settings/VTAdvancedSetting$3;

    invoke-direct {v5, p0, v2, v1}, Lcom/mediatek/settings/VTAdvancedSetting$3;-><init>(Lcom/mediatek/settings/VTAdvancedSetting;Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V

    invoke-virtual {v3, v5}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 315
    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    .line 316
    return-void
.end method

.method private showDialogMyPic(Ljava/lang/String;)V
    .locals 7
    .parameter "filename"

    .prologue
    const/4 v6, -0x2

    .line 319
    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 320
    .local v2, mImg2:Landroid/widget/ImageView;
    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 321
    .local v1, mBitmap2:Landroid/graphics/Bitmap;
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 322
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 323
    .local v0, linear:Landroid/widget/LinearLayout;
    new-instance v5, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v5, v6, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 324
    const/16 v5, 0x11

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 326
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 327
    .local v4, myBuilder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v4, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 328
    const v5, 0x7f0d0033

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 329
    const v5, 0x7f0d003c

    new-instance v6, Lcom/mediatek/settings/VTAdvancedSetting$4;

    invoke-direct {v6, p0}, Lcom/mediatek/settings/VTAdvancedSetting$4;-><init>(Lcom/mediatek/settings/VTAdvancedSetting;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 367
    const v5, 0x104000a

    new-instance v6, Lcom/mediatek/settings/VTAdvancedSetting$5;

    invoke-direct {v6, p0}, Lcom/mediatek/settings/VTAdvancedSetting$5;-><init>(Lcom/mediatek/settings/VTAdvancedSetting;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 375
    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    .line 376
    .local v3, myAlertDialog:Landroid/app/AlertDialog;
    new-instance v5, Lcom/mediatek/settings/VTAdvancedSetting$6;

    invoke-direct {v5, p0, v2, v1}, Lcom/mediatek/settings/VTAdvancedSetting$6;-><init>(Lcom/mediatek/settings/VTAdvancedSetting;Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V

    invoke-virtual {v3, v5}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 385
    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    .line 386
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 249
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onActivityResult: requestCode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", resultCode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/settings/VTAdvancedSetting;->log(Ljava/lang/String;)V

    .line 252
    const/4 v2, -0x1

    if-eq p2, v2, :cond_0

    .line 284
    :goto_0
    return-void

    .line 256
    :cond_0
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 260
    :pswitch_0
    :try_start_0
    const-string v2, "data"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 261
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_1

    .line 262
    iget v2, p0, Lcom/mediatek/settings/VTAdvancedSetting;->mWhichToSave:I

    if-nez v2, :cond_2

    .line 263
    invoke-static {}, Lcom/mediatek/settings/VTAdvancedSetting;->getPicPathUserselect()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/mediatek/phone/vt/VTCallUtils;->saveMyBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 267
    :goto_1
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 269
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " - Bitmap.isRecycled() : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/settings/VTAdvancedSetting;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 275
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    :cond_1
    :goto_2
    iget v2, p0, Lcom/mediatek/settings/VTAdvancedSetting;->mWhichToSave:I

    if-nez v2, :cond_3

    .line 276
    invoke-static {}, Lcom/mediatek/settings/VTAdvancedSetting;->getPicPathUserselect()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/settings/VTAdvancedSetting;->showDialogMyPic(Ljava/lang/String;)V

    goto :goto_0

    .line 265
    .restart local v0       #bitmap:Landroid/graphics/Bitmap;
    :cond_2
    :try_start_1
    invoke-static {}, Lcom/mediatek/settings/VTAdvancedSetting;->getPicPathUserselect2()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/mediatek/phone/vt/VTCallUtils;->saveMyBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 272
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    :catch_0
    move-exception v1

    .line 273
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 278
    .end local v1           #e:Ljava/io/IOException;
    :cond_3
    invoke-static {}, Lcom/mediatek/settings/VTAdvancedSetting;->getPicPathUserselect2()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/settings/VTAdvancedSetting;->showDialogMyPic(Ljava/lang/String;)V

    goto :goto_0

    .line 256
    nop

    :pswitch_data_0
    .packed-switch 0xbcd
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "icicle"

    .prologue
    .line 150
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 151
    const v2, 0x7f060022

    invoke-virtual {p0, v2}, Lcom/mediatek/settings/VTAdvancedSetting;->addPreferencesFromResource(I)V

    .line 152
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v2

    iget-object v2, v2, Lcom/android/phone/PhoneApp;->phoneMgr:Lcom/android/phone/PhoneInterfaceManager;

    invoke-virtual {v2}, Lcom/android/phone/PhoneInterfaceManager;->get3GCapabilitySIM()I

    move-result v2

    iput v2, p0, Lcom/mediatek/settings/VTAdvancedSetting;->mSimId:I

    .line 154
    const-string v2, "button_vt_replace_expand_key"

    invoke-virtual {p0, v2}, Lcom/mediatek/settings/VTAdvancedSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/ListPreference;

    iput-object v2, p0, Lcom/mediatek/settings/VTAdvancedSetting;->mButtonVTReplace:Landroid/preference/ListPreference;

    .line 155
    iget-object v2, p0, Lcom/mediatek/settings/VTAdvancedSetting;->mButtonVTReplace:Landroid/preference/ListPreference;

    invoke-virtual {v2, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 156
    const-string v2, "button_vt_replace_peer_expand_key"

    invoke-virtual {p0, v2}, Lcom/mediatek/settings/VTAdvancedSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/ListPreference;

    iput-object v2, p0, Lcom/mediatek/settings/VTAdvancedSetting;->mButtonVTPeerReplace:Landroid/preference/ListPreference;

    .line 157
    iget-object v2, p0, Lcom/mediatek/settings/VTAdvancedSetting;->mButtonVTPeerReplace:Landroid/preference/ListPreference;

    invoke-virtual {v2, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 159
    new-instance v2, Lcom/mediatek/settings/PreCheckForRunning;

    invoke-direct {v2, p0}, Lcom/mediatek/settings/PreCheckForRunning;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/mediatek/settings/VTAdvancedSetting;->mPreCfr:Lcom/mediatek/settings/PreCheckForRunning;

    .line 161
    const-string v2, "button_cf_expand_key"

    invoke-virtual {p0, v2}, Lcom/mediatek/settings/VTAdvancedSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/settings/VTAdvancedSetting;->mButtonCf:Landroid/preference/Preference;

    .line 162
    const-string v2, "button_cb_expand_key"

    invoke-virtual {p0, v2}, Lcom/mediatek/settings/VTAdvancedSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/settings/VTAdvancedSetting;->mButtonCb:Landroid/preference/Preference;

    .line 163
    const-string v2, "button_more_expand_key"

    invoke-virtual {p0, v2}, Lcom/mediatek/settings/VTAdvancedSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/settings/VTAdvancedSetting;->mButtonMore:Landroid/preference/Preference;

    .line 164
    const-string v2, "button_vt_enable_peer_replace_key"

    invoke-virtual {p0, v2}, Lcom/mediatek/settings/VTAdvancedSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/mediatek/settings/VTAdvancedSetting;->mButtonVTEnablePeerReplace:Landroid/preference/CheckBoxPreference;

    .line 165
    const-string v2, "button_vt_mo_local_video_display_key"

    invoke-virtual {p0, v2}, Lcom/mediatek/settings/VTAdvancedSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/mediatek/settings/VTAdvancedSetting;->mButtonVTMoVideo:Landroid/preference/CheckBoxPreference;

    .line 166
    const-string v2, "button_vt_mt_local_video_display_key"

    invoke-virtual {p0, v2}, Lcom/mediatek/settings/VTAdvancedSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/ListPreference;

    iput-object v2, p0, Lcom/mediatek/settings/VTAdvancedSetting;->mButtonVTMtVideo:Landroid/preference/ListPreference;

    .line 167
    const-string v2, "button_vt_enable_back_camera_key"

    invoke-virtual {p0, v2}, Lcom/mediatek/settings/VTAdvancedSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/mediatek/settings/VTAdvancedSetting;->mButtonVTEnablebackCamer:Landroid/preference/CheckBoxPreference;

    .line 168
    const-string v2, "button_vt_peer_bigger_key"

    invoke-virtual {p0, v2}, Lcom/mediatek/settings/VTAdvancedSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/mediatek/settings/VTAdvancedSetting;->mButtonVTPeerBigger:Landroid/preference/CheckBoxPreference;

    .line 169
    const-string v2, "button_vt_auto_dropback_key"

    invoke-virtual {p0, v2}, Lcom/mediatek/settings/VTAdvancedSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/mediatek/settings/VTAdvancedSetting;->mButtonVTAutoDropBack:Landroid/preference/CheckBoxPreference;

    .line 170
    const-string v2, "ring_only_once"

    invoke-virtual {p0, v2}, Lcom/mediatek/settings/VTAdvancedSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/mediatek/settings/VTAdvancedSetting;->mCheckBoxRingOnlyOnce:Landroid/preference/CheckBoxPreference;

    .line 171
    const-string v2, "Settings/VTAdvancedSetting"

    const-string v3, "FeatureOption.MTK_VT3G324M_SUPPORT=falseFeatureOption.MTK_PHONE_VT_VOICE_ANSWER=true"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    invoke-virtual {p0}, Lcom/mediatek/settings/VTAdvancedSetting;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/settings/VTAdvancedSetting;->mCheckBoxRingOnlyOnce:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 177
    iget-object v2, p0, Lcom/mediatek/settings/VTAdvancedSetting;->mPreCfr:Lcom/mediatek/settings/PreCheckForRunning;

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/mediatek/settings/PreCheckForRunning;->mByPass:Z

    .line 179
    invoke-virtual {p0}, Lcom/mediatek/settings/VTAdvancedSetting;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 180
    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 182
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 184
    :cond_0
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 185
    .local v1, intentFilter:Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.SIM_INDICATOR_STATE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 186
    const-string v2, "android.intent.action.SIM_INFO_UPDATE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 187
    iget-object v2, p0, Lcom/mediatek/settings/VTAdvancedSetting;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2, v1}, Lcom/mediatek/settings/VTAdvancedSetting;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 188
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 430
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 431
    iget-object v0, p0, Lcom/mediatek/settings/VTAdvancedSetting;->mPreCfr:Lcom/mediatek/settings/PreCheckForRunning;

    if-eqz v0, :cond_0

    .line 432
    iget-object v0, p0, Lcom/mediatek/settings/VTAdvancedSetting;->mPreCfr:Lcom/mediatek/settings/PreCheckForRunning;

    invoke-virtual {v0}, Lcom/mediatek/settings/PreCheckForRunning;->deRegister()V

    .line 434
    :cond_0
    iget-object v0, p0, Lcom/mediatek/settings/VTAdvancedSetting;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/mediatek/settings/VTAdvancedSetting;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 435
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 197
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 198
    .local v0, itemId:I
    packed-switch v0, :pswitch_data_0

    .line 205
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    :goto_0
    return v1

    .line 200
    :pswitch_0
    invoke-virtual {p0}, Lcom/mediatek/settings/VTAdvancedSetting;->finish()V

    .line 201
    const/4 v1, 0x1

    goto :goto_0

    .line 198
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 3
    .parameter "preference"
    .parameter "objValue"

    .prologue
    const/4 v2, 0x1

    .line 209
    iget-object v0, p0, Lcom/mediatek/settings/VTAdvancedSetting;->mButtonVTReplace:Landroid/preference/ListPreference;

    if-ne p1, v0, :cond_2

    .line 211
    invoke-static {}, Lcom/mediatek/phone/vt/VTCallUtils;->checkVTFile()V

    .line 212
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/settings/VTAdvancedSetting;->mWhichToSave:I

    .line 214
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 216
    const-string v0, " Picture for replacing local video -- selected DEFAULT PICTURE"

    invoke-static {v0}, Lcom/mediatek/settings/VTAdvancedSetting;->log(Ljava/lang/String;)V

    .line 218
    invoke-static {}, Lcom/mediatek/settings/VTAdvancedSetting;->getPicPathDefault()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/settings/VTAdvancedSetting;->showDialogDefaultPic(Ljava/lang/String;)V

    .line 244
    :cond_0
    :goto_0
    return v2

    .line 219
    :cond_1
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 221
    const-string v0, " Picture for replacing local video -- selected MY PICTURE"

    invoke-static {v0}, Lcom/mediatek/settings/VTAdvancedSetting;->log(Ljava/lang/String;)V

    .line 223
    invoke-static {}, Lcom/mediatek/settings/VTAdvancedSetting;->getPicPathUserselect()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/settings/VTAdvancedSetting;->showDialogMyPic(Ljava/lang/String;)V

    goto :goto_0

    .line 225
    :cond_2
    iget-object v0, p0, Lcom/mediatek/settings/VTAdvancedSetting;->mButtonVTPeerReplace:Landroid/preference/ListPreference;

    if-ne p1, v0, :cond_0

    .line 227
    invoke-static {}, Lcom/mediatek/phone/vt/VTCallUtils;->checkVTFile()V

    .line 228
    iput v2, p0, Lcom/mediatek/settings/VTAdvancedSetting;->mWhichToSave:I

    .line 230
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 232
    const-string v0, " Picture for replacing peer video -- selected DEFAULT PICTURE"

    invoke-static {v0}, Lcom/mediatek/settings/VTAdvancedSetting;->log(Ljava/lang/String;)V

    .line 234
    invoke-static {}, Lcom/mediatek/settings/VTAdvancedSetting;->getPicPathDefault2()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/settings/VTAdvancedSetting;->showDialogDefaultPic(Ljava/lang/String;)V

    goto :goto_0

    .line 235
    :cond_3
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 237
    const-string v0, " Picture for replacing peer video -- selected MY PICTURE"

    invoke-static {v0}, Lcom/mediatek/settings/VTAdvancedSetting;->log(Ljava/lang/String;)V

    .line 239
    invoke-static {}, Lcom/mediatek/settings/VTAdvancedSetting;->getPicPathUserselect2()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/settings/VTAdvancedSetting;->showDialogMyPic(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 5
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/16 v4, 0x12e

    const/4 v1, 0x1

    .line 406
    iget-object v2, p0, Lcom/mediatek/settings/VTAdvancedSetting;->mButtonCf:Landroid/preference/Preference;

    if-ne p2, v2, :cond_0

    .line 407
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/android/phone/GsmUmtsCallForwardOptions;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 408
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "simId"

    iget v3, p0, Lcom/mediatek/settings/VTAdvancedSetting;->mSimId:I

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 409
    const-string v2, "ISVT"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 410
    iget-object v2, p0, Lcom/mediatek/settings/VTAdvancedSetting;->mPreCfr:Lcom/mediatek/settings/PreCheckForRunning;

    iget v3, p0, Lcom/mediatek/settings/VTAdvancedSetting;->mSimId:I

    invoke-virtual {v2, v0, v3, v4}, Lcom/mediatek/settings/PreCheckForRunning;->checkToRun(Landroid/content/Intent;II)V

    .line 426
    .end local v0           #intent:Landroid/content/Intent;
    :goto_0
    return v1

    .line 412
    :cond_0
    iget-object v2, p0, Lcom/mediatek/settings/VTAdvancedSetting;->mButtonCb:Landroid/preference/Preference;

    if-ne p2, v2, :cond_1

    .line 413
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/mediatek/settings/CallBarring;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 414
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v2, "simId"

    iget v3, p0, Lcom/mediatek/settings/VTAdvancedSetting;->mSimId:I

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 415
    const-string v2, "ISVT"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 416
    iget-object v2, p0, Lcom/mediatek/settings/VTAdvancedSetting;->mPreCfr:Lcom/mediatek/settings/PreCheckForRunning;

    iget v3, p0, Lcom/mediatek/settings/VTAdvancedSetting;->mSimId:I

    invoke-virtual {v2, v0, v3, v4}, Lcom/mediatek/settings/PreCheckForRunning;->checkToRun(Landroid/content/Intent;II)V

    goto :goto_0

    .line 418
    .end local v0           #intent:Landroid/content/Intent;
    :cond_1
    iget-object v2, p0, Lcom/mediatek/settings/VTAdvancedSetting;->mButtonMore:Landroid/preference/Preference;

    if-ne p2, v2, :cond_2

    .line 419
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/android/phone/GsmUmtsAdditionalCallOptions;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 420
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v2, "simId"

    iget v3, p0, Lcom/mediatek/settings/VTAdvancedSetting;->mSimId:I

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 421
    const-string v2, "ISVT"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 422
    iget-object v2, p0, Lcom/mediatek/settings/VTAdvancedSetting;->mPreCfr:Lcom/mediatek/settings/PreCheckForRunning;

    iget v3, p0, Lcom/mediatek/settings/VTAdvancedSetting;->mSimId:I

    invoke-virtual {v2, v0, v3, v4}, Lcom/mediatek/settings/PreCheckForRunning;->checkToRun(Landroid/content/Intent;II)V

    goto :goto_0

    .line 426
    .end local v0           #intent:Landroid/content/Intent;
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 191
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 192
    invoke-direct {p0}, Lcom/mediatek/settings/VTAdvancedSetting;->setScreenEnabled()V

    .line 193
    return-void
.end method
