.class public Lcom/mediatek/bluetooth/hid/BluetoothHidActivity;
.super Landroid/preference/PreferenceActivity;
.source "BluetoothHidActivity.java"


# static fields
.field public static final ACTION_DEVICE_ADDED:Ljava/lang/String; = "com.mediatek.bluetooth.BluetoothHidActivity.ACTION_DEVICE_ADDED"

.field public static final ACTION_SUMMARY_CHANGED:Ljava/lang/String; = "com.mediatek.bluetooth.BluetoothHidActivity.ACTION_SUMMARY_CHANGED"

.field private static final ADD_NEW_DEVICE:Ljava/lang/String; = "add_new_device"

.field public static final BT_HID_NOT_FOUNT:Ljava/lang/String; = "BT_HID_NOT_FOUNT"

.field public static final BT_HID_SETTING_INFO:Ljava/lang/String; = "BT_HID_SETTING_INFO"

.field private static final CONTEXT_ITEM_CONNECT:I = 0x2

.field private static final CONTEXT_ITEM_DISCONNECT:I = 0x3

.field private static final CONTEXT_ITEM_GET_IDLE:I = 0xa

.field private static final CONTEXT_ITEM_GET_PROTOCOL:I = 0x6

.field private static final CONTEXT_ITEM_GET_REPORT:I = 0x8

.field private static final CONTEXT_ITEM_SEND_REPORT:I = 0xb

.field private static final CONTEXT_ITEM_SET_IDLE:I = 0x9

.field private static final CONTEXT_ITEM_SET_PROTOCOL:I = 0x5

.field private static final CONTEXT_ITEM_SET_REPORT:I = 0x7

.field private static final CONTEXT_ITEM_UNPLUG:I = 0x4

.field private static final DEBUG:Z = true

.field public static final EXTRA_DEVICE:Ljava/lang/String; = "com.mediatek.bluetooth.BluetoothHidActivity.extra.EXTRA_DEVICE"

.field public static final EXTRA_ENABLE:Ljava/lang/String; = "com.mediatek.bluetooth.BluetoothHidActivity.extra.EXTRA_ENABLE"

.field public static final EXTRA_FILTER_TYPE:Ljava/lang/String; = "android.bluetooth.devicepicker.extra.FILTER_TYPE"

.field public static final EXTRA_LAUNCH_CLASS:Ljava/lang/String; = "android.bluetooth.devicepicker.extra.DEVICE_PICKER_LAUNCH_CLASS"

.field public static final EXTRA_LAUNCH_PACKAGE:Ljava/lang/String; = "android.bluetooth.devicepicker.extra.LAUNCH_PACKAGE"

.field public static final EXTRA_NEED_AUTH:Ljava/lang/String; = "android.bluetooth.devicepicker.extra.NEED_AUTH"

.field public static final EXTRA_SUMMARY:Ljava/lang/String; = "com.mediatek.bluetooth.BluetoothHidActivity.extra.EXTRA_SUMMARY"

.field private static final HID_DEVICE_LIST:Ljava/lang/String; = "hid_device_list"

.field public static final INTENT:Ljava/lang/String; = "android.bluetooth.devicepicker.action.LAUNCH"

.field private static final REQUEST_ENABLE_BT:I = 0x2

.field private static final TAG:Ljava/lang/String; = "[BT][HID][BluetoothHidActivity]"

.field public static final THIS_PACKAGE_NAME:Ljava/lang/String; = "com.mediatek.bluetooth"

.field private static sBluetoothHidPts:Z

.field static sDeviceList:Landroid/preference/PreferenceCategory;

.field private static sEnableBT:Z

.field private static sServiceBinded:Z


# instance fields
.field private mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field mCt:Landroid/content/Context;

.field private mHidServerNotifyConn:Landroid/content/ServiceConnection;

.field mIntentToDevicePicker:Landroid/content/Intent;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mServerNotify:Lcom/mediatek/bluetooth/hid/IBluetoothHidServerNotify;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 108
    sput-boolean v0, Lcom/mediatek/bluetooth/hid/BluetoothHidActivity;->sBluetoothHidPts:Z

    .line 110
    sput-boolean v0, Lcom/mediatek/bluetooth/hid/BluetoothHidActivity;->sEnableBT:Z

    .line 112
    sput-boolean v0, Lcom/mediatek/bluetooth/hid/BluetoothHidActivity;->sServiceBinded:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 70
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 106
    iput-object v0, p0, Lcom/mediatek/bluetooth/hid/BluetoothHidActivity;->mServerNotify:Lcom/mediatek/bluetooth/hid/IBluetoothHidServerNotify;

    .line 138
    iput-object v0, p0, Lcom/mediatek/bluetooth/hid/BluetoothHidActivity;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 140
    iput-object p0, p0, Lcom/mediatek/bluetooth/hid/BluetoothHidActivity;->mCt:Landroid/content/Context;

    .line 144
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.bluetooth.devicepicker.action.LAUNCH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mediatek/bluetooth/hid/BluetoothHidActivity;->mIntentToDevicePicker:Landroid/content/Intent;

    .line 415
    new-instance v0, Lcom/mediatek/bluetooth/hid/BluetoothHidActivity$1;

    invoke-direct {v0, p0}, Lcom/mediatek/bluetooth/hid/BluetoothHidActivity$1;-><init>(Lcom/mediatek/bluetooth/hid/BluetoothHidActivity;)V

    iput-object v0, p0, Lcom/mediatek/bluetooth/hid/BluetoothHidActivity;->mHidServerNotifyConn:Landroid/content/ServiceConnection;

    .line 740
    new-instance v0, Lcom/mediatek/bluetooth/hid/BluetoothHidActivity$2;

    invoke-direct {v0, p0}, Lcom/mediatek/bluetooth/hid/BluetoothHidActivity$2;-><init>(Lcom/mediatek/bluetooth/hid/BluetoothHidActivity;)V

    iput-object v0, p0, Lcom/mediatek/bluetooth/hid/BluetoothHidActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/bluetooth/hid/BluetoothHidActivity;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/mediatek/bluetooth/hid/BluetoothHidActivity;->debugLog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/mediatek/bluetooth/hid/BluetoothHidActivity;)Lcom/mediatek/bluetooth/hid/IBluetoothHidServerNotify;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/mediatek/bluetooth/hid/BluetoothHidActivity;->mServerNotify:Lcom/mediatek/bluetooth/hid/IBluetoothHidServerNotify;

    return-object v0
.end method

.method static synthetic access$102(Lcom/mediatek/bluetooth/hid/BluetoothHidActivity;Lcom/mediatek/bluetooth/hid/IBluetoothHidServerNotify;)Lcom/mediatek/bluetooth/hid/IBluetoothHidServerNotify;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    iput-object p1, p0, Lcom/mediatek/bluetooth/hid/BluetoothHidActivity;->mServerNotify:Lcom/mediatek/bluetooth/hid/IBluetoothHidServerNotify;

    return-object p1
.end method

.method static synthetic access$200(Lcom/mediatek/bluetooth/hid/BluetoothHidActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/mediatek/bluetooth/hid/BluetoothHidActivity;->getPreferenceList()V

    return-void
.end method

.method static synthetic access$300()Z
    .locals 1

    .prologue
    .line 70
    sget-boolean v0, Lcom/mediatek/bluetooth/hid/BluetoothHidActivity;->sServiceBinded:Z

    return v0
.end method

.method static synthetic access$302(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 70
    sput-boolean p0, Lcom/mediatek/bluetooth/hid/BluetoothHidActivity;->sServiceBinded:Z

    return p0
.end method

.method static synthetic access$400(Lcom/mediatek/bluetooth/hid/BluetoothHidActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/mediatek/bluetooth/hid/BluetoothHidActivity;->restorePreferenceList()V

    return-void
.end method

.method static synthetic access$500(Lcom/mediatek/bluetooth/hid/BluetoothHidActivity;)Landroid/content/ServiceConnection;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/mediatek/bluetooth/hid/BluetoothHidActivity;->mHidServerNotifyConn:Landroid/content/ServiceConnection;

    return-object v0
.end method

.method static synthetic access$600()Z
    .locals 1

    .prologue
    .line 70
    sget-boolean v0, Lcom/mediatek/bluetooth/hid/BluetoothHidActivity;->sEnableBT:Z

    return v0
.end method

.method private debugLog(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 546
    const-string v0, "[BT][HID][BluetoothHidActivity]"

    invoke-static {v0, p1}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 548
    return-void
.end method

.method private getDeviceFromMenuInfo(Landroid/view/ContextMenu$ContextMenuInfo;)Landroid/preference/Preference;
    .locals 5
    .parameter "menuInfo"

    .prologue
    const/4 v2, 0x0

    .line 713
    if-eqz p1, :cond_0

    instance-of v3, p1, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    if-nez v3, :cond_2

    :cond_0
    move-object v1, v2

    .line 723
    :cond_1
    :goto_0
    return-object v1

    :cond_2
    move-object v0, p1

    .line 717
    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 718
    .local v0, adapterMenuInfo:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    invoke-virtual {p0}, Lcom/mediatek/bluetooth/hid/BluetoothHidActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3}, Landroid/preference/PreferenceScreen;->getRootAdapter()Landroid/widget/ListAdapter;

    move-result-object v3

    iget v4, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-interface {v3, v4}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/preference/Preference;

    .line 719
    .local v1, pref:Landroid/preference/Preference;
    if-nez v1, :cond_1

    move-object v1, v2

    .line 720
    goto :goto_0
.end method

.method public static getDeviceList()Landroid/preference/PreferenceCategory;
    .locals 1

    .prologue
    .line 541
    sget-object v0, Lcom/mediatek/bluetooth/hid/BluetoothHidActivity;->sDeviceList:Landroid/preference/PreferenceCategory;

    return-object v0
.end method

.method private getPreferenceList()V
    .locals 15

    .prologue
    .line 436
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v13

    invoke-virtual {v13}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v4

    .line 437
    .local v4, pairedDevices:Ljava/util/Set;,"Ljava/util/Set<Landroid/bluetooth/BluetoothDevice;>;"
    if-nez v4, :cond_1

    .line 538
    :cond_0
    return-void

    .line 441
    :cond_1
    const-string v13, "BT_HID_SETTING_INFO"

    const/4 v14, 0x0

    invoke-virtual {p0, v13, v14}, Lcom/mediatek/bluetooth/hid/BluetoothHidActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v7

    .line 442
    .local v7, settings:Landroid/content/SharedPreferences;
    const/4 v5, 0x0

    .line 443
    .local v5, preIndex:I
    const-string v13, "preferenceCount"

    const/4 v14, 0x0

    invoke-interface {v7, v13, v14}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    .line 445
    .local v6, preferenceCount:I
    new-instance v8, Ljava/lang/String;

    invoke-direct {v8}, Ljava/lang/String;-><init>()V

    .line 447
    .local v8, state:Ljava/lang/String;
    const/4 v5, 0x0

    :goto_0
    if-ge v5, v6, :cond_10

    .line 448
    new-instance v12, Landroid/preference/Preference;

    iget-object v13, p0, Lcom/mediatek/bluetooth/hid/BluetoothHidActivity;->mCt:Landroid/content/Context;

    invoke-direct {v12, v13}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 449
    .local v12, tmpPre:Landroid/preference/Preference;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "deviceAddr"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const-string v14, "BT_HID_NOT_FOUNT"

    invoke-interface {v7, v13, v14}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 450
    .local v9, tmpAddr:Ljava/lang/String;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "newAdd"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const-string v14, "BT_HID_NOT_FOUNT"

    invoke-interface {v7, v13, v14}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 452
    .local v3, newAdd:Ljava/lang/String;
    new-instance v11, Ljava/lang/String;

    invoke-direct {v11}, Ljava/lang/String;-><init>()V

    .line 454
    .local v11, tmpName:Ljava/lang/String;
    invoke-virtual {v12, v9}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 455
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v13

    invoke-virtual {v13, v9}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    .line 456
    .local v2, mBD:Landroid/bluetooth/BluetoothDevice;
    if-eqz v2, :cond_2

    .line 457
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v11

    .line 459
    :cond_2
    invoke-virtual {v12, v11}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 460
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "in getPreferenceList "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ":"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {p0, v13}, Lcom/mediatek/bluetooth/hid/BluetoothHidActivity;->debugLog(Ljava/lang/String;)V

    .line 462
    :try_start_0
    iget-object v13, p0, Lcom/mediatek/bluetooth/hid/BluetoothHidActivity;->mServerNotify:Lcom/mediatek/bluetooth/hid/IBluetoothHidServerNotify;

    if-eqz v13, :cond_8

    .line 463
    iget-object v13, p0, Lcom/mediatek/bluetooth/hid/BluetoothHidActivity;->mServerNotify:Lcom/mediatek/bluetooth/hid/IBluetoothHidServerNotify;

    invoke-interface {v13, v9}, Lcom/mediatek/bluetooth/hid/IBluetoothHidServerNotify;->getStateByAddr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 469
    :goto_1
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "in getPreferenceList "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ":"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {p0, v13}, Lcom/mediatek/bluetooth/hid/BluetoothHidActivity;->debugLog(Ljava/lang/String;)V

    .line 470
    if-eqz v8, :cond_3

    const-string v13, "disconnect"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_3

    const-string v13, "unplug_disconnect"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_9

    .line 472
    :cond_3
    const v13, 0x7f05000d

    invoke-virtual {v12, v13}, Landroid/preference/Preference;->setSummary(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 490
    :cond_4
    :goto_2
    sget-object v13, Lcom/mediatek/bluetooth/hid/BluetoothHidActivity;->sDeviceList:Landroid/preference/PreferenceCategory;

    invoke-virtual {v13, v9}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v13

    if-nez v13, :cond_6

    .line 491
    if-eqz v8, :cond_6

    .line 492
    const-string v13, "connected"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_5

    const-string v13, "connecting"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_6

    .line 494
    :cond_5
    sget-object v13, Lcom/mediatek/bluetooth/hid/BluetoothHidActivity;->sDeviceList:Landroid/preference/PreferenceCategory;

    invoke-virtual {v13, v12}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 499
    :cond_6
    sget-object v13, Lcom/mediatek/bluetooth/hid/BluetoothHidActivity;->sDeviceList:Landroid/preference/PreferenceCategory;

    invoke-virtual {v13, v9}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v13

    if-nez v13, :cond_7

    .line 500
    if-eqz v8, :cond_e

    .line 501
    const-string v13, "unplug_disconnect"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_e

    const-string v13, "FALSE"

    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_e

    .line 447
    :cond_7
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .line 465
    :cond_8
    :try_start_1
    const-string v13, "in getPreferenceList mServerNotify == null"

    invoke-direct {p0, v13}, Lcom/mediatek/bluetooth/hid/BluetoothHidActivity;->debugLog(Ljava/lang/String;)V

    .line 466
    const/4 v8, 0x0

    goto :goto_1

    .line 473
    :cond_9
    const-string v13, "connected"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_a

    .line 474
    const v13, 0x7f05000b

    invoke-virtual {v12, v13}, Landroid/preference/Preference;->setSummary(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 484
    :catch_0
    move-exception v0

    .line 485
    .local v0, e:Landroid/os/RemoteException;
    const-string v13, "hid retrieve preferences error"

    invoke-direct {p0, v13}, Lcom/mediatek/bluetooth/hid/BluetoothHidActivity;->debugLog(Ljava/lang/String;)V

    .line 486
    const v13, 0x7f05000d

    invoke-virtual {v12, v13}, Landroid/preference/Preference;->setSummary(I)V

    .line 487
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_2

    .line 475
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_a
    :try_start_2
    const-string v13, "disconnecting"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_b

    const-string v13, "unplug"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_c

    .line 477
    :cond_b
    const v13, 0x7f05001f

    invoke-virtual {v12, v13}, Landroid/preference/Preference;->setSummary(I)V

    .line 478
    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_2

    .line 479
    :cond_c
    const-string v13, "connecting"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_d

    const-string v13, "authorize"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 481
    :cond_d
    const v13, 0x7f05000c

    invoke-virtual {v12, v13}, Landroid/preference/Preference;->setSummary(I)V

    .line 482
    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/preference/Preference;->setEnabled(Z)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_2

    .line 505
    :cond_e
    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v13

    if-lez v13, :cond_7

    .line 506
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "in getPreferenceList pairedDevices.size="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {p0, v13}, Lcom/mediatek/bluetooth/hid/BluetoothHidActivity;->debugLog(Ljava/lang/String;)V

    .line 507
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_f
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/bluetooth/BluetoothDevice;

    .line 508
    .local v10, tmpDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {v10}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_f

    .line 509
    sget-object v13, Lcom/mediatek/bluetooth/hid/BluetoothHidActivity;->sDeviceList:Landroid/preference/PreferenceCategory;

    invoke-virtual {v13, v12}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_3

    .line 516
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #mBD:Landroid/bluetooth/BluetoothDevice;
    .end local v3           #newAdd:Ljava/lang/String;
    .end local v9           #tmpAddr:Ljava/lang/String;
    .end local v10           #tmpDevice:Landroid/bluetooth/BluetoothDevice;
    .end local v11           #tmpName:Ljava/lang/String;
    .end local v12           #tmpPre:Landroid/preference/Preference;
    :cond_10
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_11
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/bluetooth/BluetoothDevice;

    .line 518
    .restart local v10       #tmpDevice:Landroid/bluetooth/BluetoothDevice;
    :try_start_3
    iget-object v13, p0, Lcom/mediatek/bluetooth/hid/BluetoothHidActivity;->mServerNotify:Lcom/mediatek/bluetooth/hid/IBluetoothHidServerNotify;

    invoke-virtual {v10}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v13, v14}, Lcom/mediatek/bluetooth/hid/IBluetoothHidServerNotify;->getStateByAddr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 519
    if-eqz v8, :cond_11

    .line 520
    const-string v13, "connected"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_11

    .line 521
    new-instance v12, Landroid/preference/Preference;

    iget-object v13, p0, Lcom/mediatek/bluetooth/hid/BluetoothHidActivity;->mCt:Landroid/content/Context;

    invoke-direct {v12, v13}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 522
    .restart local v12       #tmpPre:Landroid/preference/Preference;
    invoke-virtual {v10}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 523
    invoke-virtual {v10}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 524
    const v13, 0x7f05000b

    invoke-virtual {v12, v13}, Landroid/preference/Preference;->setSummary(I)V

    .line 525
    sget-object v13, Lcom/mediatek/bluetooth/hid/BluetoothHidActivity;->sDeviceList:Landroid/preference/PreferenceCategory;

    invoke-virtual {v10}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v13

    if-nez v13, :cond_11

    .line 526
    sget-object v13, Lcom/mediatek/bluetooth/hid/BluetoothHidActivity;->sDeviceList:Landroid/preference/PreferenceCategory;

    invoke-virtual {v13, v12}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_4

    .line 531
    .end local v12           #tmpPre:Landroid/preference/Preference;
    :catch_1
    move-exception v0

    .line 532
    .restart local v0       #e:Landroid/os/RemoteException;
    const-string v13, "hid retrieve preferences error"

    invoke-direct {p0, v13}, Lcom/mediatek/bluetooth/hid/BluetoothHidActivity;->debugLog(Ljava/lang/String;)V

    .line 533
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_4
.end method

.method private restorePreferenceList()V
    .locals 7

    .prologue
    .line 364
    iget-object v4, p0, Lcom/mediatek/bluetooth/hid/BluetoothHidActivity;->mServerNotify:Lcom/mediatek/bluetooth/hid/IBluetoothHidServerNotify;

    if-nez v4, :cond_1

    .line 378
    :cond_0
    return-void

    .line 367
    :cond_1
    const-string v4, "BT_HID_SETTING_INFO"

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5}, Lcom/mediatek/bluetooth/hid/BluetoothHidActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 368
    .local v2, settings:Landroid/content/SharedPreferences;
    sget-object v4, Lcom/mediatek/bluetooth/hid/BluetoothHidActivity;->sDeviceList:Landroid/preference/PreferenceCategory;

    invoke-virtual {v4}, Landroid/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v0

    .line 369
    .local v0, preferenceCount:I
    const/4 v1, 0x0

    .line 370
    .local v1, preferenceIndex:I
    new-instance v3, Landroid/preference/Preference;

    invoke-direct {v3, p0}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 371
    .local v3, tmpPre:Landroid/preference/Preference;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "In restorePreferenceList,preferenceCount="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/mediatek/bluetooth/hid/BluetoothHidActivity;->debugLog(Ljava/lang/String;)V

    .line 372
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "preferenceCount"

    invoke-interface {v4, v5, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 373
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 374
    sget-object v4, Lcom/mediatek/bluetooth/hid/BluetoothHidActivity;->sDeviceList:Landroid/preference/PreferenceCategory;

    invoke-virtual {v4, v1}, Landroid/preference/PreferenceCategory;->getPreference(I)Landroid/preference/Preference;

    move-result-object v3

    .line 375
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "deviceAddr"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "newAdd"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "FALSE"

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 373
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public getmServerNotify()Lcom/mediatek/bluetooth/hid/IBluetoothHidServerNotify;
    .locals 1

    .prologue
    .line 737
    iget-object v0, p0, Lcom/mediatek/bluetooth/hid/BluetoothHidActivity;->mServerNotify:Lcom/mediatek/bluetooth/hid/IBluetoothHidServerNotify;

    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 235
    invoke-super {p0, p1, p2, p3}, Landroid/preference/PreferenceActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 236
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onActivityResult, resultCode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/bluetooth/hid/BluetoothHidActivity;->debugLog(Ljava/lang/String;)V

    .line 237
    packed-switch p1, :pswitch_data_0

    .line 284
    :goto_0
    return-void

    .line 239
    :pswitch_0
    const/4 v0, -0x1

    if-ne p2, v0, :cond_2

    .line 240
    const v0, 0x7f050006

    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 241
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/mediatek/bluetooth/hid/BluetoothHidService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/mediatek/bluetooth/hid/BluetoothHidActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 243
    iget-object v0, p0, Lcom/mediatek/bluetooth/hid/BluetoothHidActivity;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v0

    const/16 v1, 0xd

    if-eq v0, v1, :cond_1

    .line 244
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/mediatek/bluetooth/hid/BluetoothHidService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/mediatek/bluetooth/hid/BluetoothHidActivity;->mHidServerNotifyConn:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0, v1, v3}, Lcom/mediatek/bluetooth/hid/BluetoothHidActivity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 247
    sput-boolean v2, Lcom/mediatek/bluetooth/hid/BluetoothHidActivity;->sServiceBinded:Z

    .line 248
    invoke-virtual {p0}, Lcom/mediatek/bluetooth/hid/BluetoothHidActivity;->finish()V

    .line 255
    :cond_0
    :goto_1
    const-string v0, "hid success bind service in onActivityResult"

    invoke-direct {p0, v0}, Lcom/mediatek/bluetooth/hid/BluetoothHidActivity;->debugLog(Ljava/lang/String;)V

    .line 256
    sput-boolean v2, Lcom/mediatek/bluetooth/hid/BluetoothHidActivity;->sEnableBT:Z

    goto :goto_0

    .line 253
    :cond_1
    invoke-virtual {p0}, Lcom/mediatek/bluetooth/hid/BluetoothHidActivity;->finish()V

    goto :goto_1

    .line 267
    :cond_2
    if-nez p2, :cond_3

    .line 269
    sput-boolean v2, Lcom/mediatek/bluetooth/hid/BluetoothHidActivity;->sEnableBT:Z

    goto :goto_0

    .line 274
    :cond_3
    sput-boolean v2, Lcom/mediatek/bluetooth/hid/BluetoothHidActivity;->sEnableBT:Z

    .line 275
    const v0, 0x7f050007

    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 237
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 8
    .parameter "item"

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 553
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/mediatek/bluetooth/hid/BluetoothHidActivity;->getDeviceFromMenuInfo(Landroid/view/ContextMenu$ContextMenuInfo;)Landroid/preference/Preference;

    move-result-object v1

    .line 554
    .local v1, pre:Landroid/preference/Preference;
    if-nez v1, :cond_0

    .line 669
    :goto_0
    return v4

    .line 557
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    goto :goto_0

    .line 560
    :pswitch_0
    :try_start_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "hid connect "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/mediatek/bluetooth/hid/BluetoothHidActivity;->debugLog(Ljava/lang/String;)V

    .line 561
    invoke-virtual {p0}, Lcom/mediatek/bluetooth/hid/BluetoothHidActivity;->getmServerNotify()Lcom/mediatek/bluetooth/hid/IBluetoothHidServerNotify;

    move-result-object v6

    invoke-virtual {v1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lcom/mediatek/bluetooth/hid/IBluetoothHidServerNotify;->connectReq(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v4, v5

    .line 562
    goto :goto_0

    .line 563
    :catch_0
    move-exception v0

    .line 564
    .local v0, e:Landroid/os/RemoteException;
    const-string v5, "hid connect error"

    invoke-direct {p0, v5}, Lcom/mediatek/bluetooth/hid/BluetoothHidActivity;->debugLog(Ljava/lang/String;)V

    .line 565
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 570
    .end local v0           #e:Landroid/os/RemoteException;
    :pswitch_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "hid disconnect "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/mediatek/bluetooth/hid/BluetoothHidActivity;->debugLog(Ljava/lang/String;)V

    .line 572
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 573
    .local v2, tmpIntent:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/mediatek/bluetooth/hid/BluetoothHidActivity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const-class v6, Lcom/mediatek/bluetooth/hid/BluetoothHidAlert;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v4, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    const-string v6, "device_addr"

    invoke-virtual {v1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    const-string v6, "action"

    const-string v7, "disconnect"

    invoke-virtual {v4, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 576
    invoke-virtual {p0, v2}, Lcom/mediatek/bluetooth/hid/BluetoothHidActivity;->startActivity(Landroid/content/Intent;)V

    move v4, v5

    .line 577
    goto/16 :goto_0

    .line 580
    .end local v2           #tmpIntent:Landroid/content/Intent;
    :pswitch_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "hid unplug "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/mediatek/bluetooth/hid/BluetoothHidActivity;->debugLog(Ljava/lang/String;)V

    .line 582
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 583
    .local v3, tmpIntent2:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/mediatek/bluetooth/hid/BluetoothHidActivity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const-class v6, Lcom/mediatek/bluetooth/hid/BluetoothHidAlert;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v4, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    const-string v6, "device_addr"

    invoke-virtual {v1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    const-string v6, "action"

    const-string v7, "unplug"

    invoke-virtual {v4, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 586
    invoke-virtual {p0, v3}, Lcom/mediatek/bluetooth/hid/BluetoothHidActivity;->startActivity(Landroid/content/Intent;)V

    move v4, v5

    .line 587
    goto/16 :goto_0

    .line 591
    .end local v3           #tmpIntent2:Landroid/content/Intent;
    :pswitch_3
    :try_start_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "hid SET_IDLE "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/mediatek/bluetooth/hid/BluetoothHidActivity;->debugLog(Ljava/lang/String;)V

    .line 592
    invoke-virtual {p0}, Lcom/mediatek/bluetooth/hid/BluetoothHidActivity;->getmServerNotify()Lcom/mediatek/bluetooth/hid/IBluetoothHidServerNotify;

    move-result-object v6

    invoke-virtual {v1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lcom/mediatek/bluetooth/hid/IBluetoothHidServerNotify;->setIdleReq(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move v4, v5

    .line 593
    goto/16 :goto_0

    .line 594
    :catch_1
    move-exception v0

    .line 595
    .restart local v0       #e:Landroid/os/RemoteException;
    const-string v5, "hid SET_IDLE error"

    invoke-direct {p0, v5}, Lcom/mediatek/bluetooth/hid/BluetoothHidActivity;->debugLog(Ljava/lang/String;)V

    .line 596
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_0

    .line 602
    .end local v0           #e:Landroid/os/RemoteException;
    :pswitch_4
    :try_start_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "hid GET_IDLE "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/mediatek/bluetooth/hid/BluetoothHidActivity;->debugLog(Ljava/lang/String;)V

    .line 603
    invoke-virtual {p0}, Lcom/mediatek/bluetooth/hid/BluetoothHidActivity;->getmServerNotify()Lcom/mediatek/bluetooth/hid/IBluetoothHidServerNotify;

    move-result-object v6

    invoke-virtual {v1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lcom/mediatek/bluetooth/hid/IBluetoothHidServerNotify;->getIdleReq(Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    move v4, v5

    .line 604
    goto/16 :goto_0

    .line 605
    :catch_2
    move-exception v0

    .line 606
    .restart local v0       #e:Landroid/os/RemoteException;
    const-string v5, "hid GET_IDLE error"

    invoke-direct {p0, v5}, Lcom/mediatek/bluetooth/hid/BluetoothHidActivity;->debugLog(Ljava/lang/String;)V

    .line 607
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_0

    .line 613
    .end local v0           #e:Landroid/os/RemoteException;
    :pswitch_5
    :try_start_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "hid SET_REPORT "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/mediatek/bluetooth/hid/BluetoothHidActivity;->debugLog(Ljava/lang/String;)V

    .line 614
    invoke-virtual {p0}, Lcom/mediatek/bluetooth/hid/BluetoothHidActivity;->getmServerNotify()Lcom/mediatek/bluetooth/hid/IBluetoothHidServerNotify;

    move-result-object v6

    invoke-virtual {v1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lcom/mediatek/bluetooth/hid/IBluetoothHidServerNotify;->setReportReq(Ljava/lang/String;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3

    move v4, v5

    .line 615
    goto/16 :goto_0

    .line 616
    :catch_3
    move-exception v0

    .line 617
    .restart local v0       #e:Landroid/os/RemoteException;
    const-string v5, "hid SET_REPORT error"

    invoke-direct {p0, v5}, Lcom/mediatek/bluetooth/hid/BluetoothHidActivity;->debugLog(Ljava/lang/String;)V

    .line 618
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_0

    .line 624
    .end local v0           #e:Landroid/os/RemoteException;
    :pswitch_6
    :try_start_4
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "hid GET_REPORT "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/mediatek/bluetooth/hid/BluetoothHidActivity;->debugLog(Ljava/lang/String;)V

    .line 625
    invoke-virtual {p0}, Lcom/mediatek/bluetooth/hid/BluetoothHidActivity;->getmServerNotify()Lcom/mediatek/bluetooth/hid/IBluetoothHidServerNotify;

    move-result-object v6

    invoke-virtual {v1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lcom/mediatek/bluetooth/hid/IBluetoothHidServerNotify;->getReportReq(Ljava/lang/String;)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_4

    move v4, v5

    .line 626
    goto/16 :goto_0

    .line 627
    :catch_4
    move-exception v0

    .line 628
    .restart local v0       #e:Landroid/os/RemoteException;
    const-string v5, "hid GET_REPORT error"

    invoke-direct {p0, v5}, Lcom/mediatek/bluetooth/hid/BluetoothHidActivity;->debugLog(Ljava/lang/String;)V

    .line 629
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_0

    .line 635
    .end local v0           #e:Landroid/os/RemoteException;
    :pswitch_7
    :try_start_5
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "hid SET_PROTOCOL "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/mediatek/bluetooth/hid/BluetoothHidActivity;->debugLog(Ljava/lang/String;)V

    .line 636
    invoke-virtual {p0}, Lcom/mediatek/bluetooth/hid/BluetoothHidActivity;->getmServerNotify()Lcom/mediatek/bluetooth/hid/IBluetoothHidServerNotify;

    move-result-object v6

    invoke-virtual {v1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lcom/mediatek/bluetooth/hid/IBluetoothHidServerNotify;->setProtocolReq(Ljava/lang/String;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_5

    move v4, v5

    .line 637
    goto/16 :goto_0

    .line 638
    :catch_5
    move-exception v0

    .line 639
    .restart local v0       #e:Landroid/os/RemoteException;
    const-string v5, "hid SET_PROTOCOL error"

    invoke-direct {p0, v5}, Lcom/mediatek/bluetooth/hid/BluetoothHidActivity;->debugLog(Ljava/lang/String;)V

    .line 640
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_0

    .line 646
    .end local v0           #e:Landroid/os/RemoteException;
    :pswitch_8
    :try_start_6
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "hid GET_PROTOCOL "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/mediatek/bluetooth/hid/BluetoothHidActivity;->debugLog(Ljava/lang/String;)V

    .line 647
    invoke-virtual {p0}, Lcom/mediatek/bluetooth/hid/BluetoothHidActivity;->getmServerNotify()Lcom/mediatek/bluetooth/hid/IBluetoothHidServerNotify;

    move-result-object v6

    invoke-virtual {v1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lcom/mediatek/bluetooth/hid/IBluetoothHidServerNotify;->getProtocolReq(Ljava/lang/String;)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_6

    move v4, v5

    .line 648
    goto/16 :goto_0

    .line 649
    :catch_6
    move-exception v0

    .line 650
    .restart local v0       #e:Landroid/os/RemoteException;
    const-string v5, "hid GET_PROTOCOL error"

    invoke-direct {p0, v5}, Lcom/mediatek/bluetooth/hid/BluetoothHidActivity;->debugLog(Ljava/lang/String;)V

    .line 651
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_0

    .line 657
    .end local v0           #e:Landroid/os/RemoteException;
    :pswitch_9
    :try_start_7
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "hid SEND_REPORT "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/mediatek/bluetooth/hid/BluetoothHidActivity;->debugLog(Ljava/lang/String;)V

    .line 658
    invoke-virtual {p0}, Lcom/mediatek/bluetooth/hid/BluetoothHidActivity;->getmServerNotify()Lcom/mediatek/bluetooth/hid/IBluetoothHidServerNotify;

    move-result-object v6

    invoke-virtual {v1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lcom/mediatek/bluetooth/hid/IBluetoothHidServerNotify;->sendReportReq(Ljava/lang/String;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_7

    move v4, v5

    .line 659
    goto/16 :goto_0

    .line 660
    :catch_7
    move-exception v0

    .line 661
    .restart local v0       #e:Landroid/os/RemoteException;
    const-string v5, "hid SEND_REPORT error"

    invoke-direct {p0, v5}, Lcom/mediatek/bluetooth/hid/BluetoothHidActivity;->debugLog(Ljava/lang/String;)V

    .line 662
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_0

    .line 557
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_7
        :pswitch_8
        :pswitch_5
        :pswitch_6
        :pswitch_3
        :pswitch_4
        :pswitch_9
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    const/4 v4, 0x1

    .line 193
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 195
    const-string v2, "onCreate"

    invoke-direct {p0, v2}, Lcom/mediatek/bluetooth/hid/BluetoothHidActivity;->debugLog(Ljava/lang/String;)V

    .line 197
    const v2, 0x7f040001

    invoke-virtual {p0, v2}, Lcom/mediatek/bluetooth/hid/BluetoothHidActivity;->addPreferencesFromResource(I)V

    .line 198
    const/high16 v2, 0x7f05

    invoke-virtual {p0, v2}, Lcom/mediatek/bluetooth/hid/BluetoothHidActivity;->setTitle(I)V

    .line 199
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/bluetooth/hid/BluetoothHidActivity;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 200
    iget-object v2, p0, Lcom/mediatek/bluetooth/hid/BluetoothHidActivity;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v2, :cond_1

    .line 201
    const-string v2, "Bluetooth is not available"

    invoke-static {p0, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 202
    invoke-virtual {p0}, Lcom/mediatek/bluetooth/hid/BluetoothHidActivity;->finish()V

    .line 231
    :cond_0
    :goto_0
    return-void

    .line 205
    :cond_1
    const-string v2, "hid_device_list"

    invoke-virtual {p0, v2}, Lcom/mediatek/bluetooth/hid/BluetoothHidActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceCategory;

    sput-object v2, Lcom/mediatek/bluetooth/hid/BluetoothHidActivity;->sDeviceList:Landroid/preference/PreferenceCategory;

    .line 206
    sget-object v2, Lcom/mediatek/bluetooth/hid/BluetoothHidActivity;->sDeviceList:Landroid/preference/PreferenceCategory;

    if-eqz v2, :cond_2

    .line 207
    sget-object v2, Lcom/mediatek/bluetooth/hid/BluetoothHidActivity;->sDeviceList:Landroid/preference/PreferenceCategory;

    invoke-virtual {v2, v4}, Landroid/preference/PreferenceCategory;->setOrderingAsAdded(Z)V

    .line 209
    :cond_2
    invoke-virtual {p0}, Lcom/mediatek/bluetooth/hid/BluetoothHidActivity;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/bluetooth/hid/BluetoothHidActivity;->registerForContextMenu(Landroid/view/View;)V

    .line 211
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 212
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v2, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 213
    const-string v2, "com.mediatek.bluetooth.BluetoothHidActivity.ACTION_SUMMARY_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 214
    const-string v2, "com.mediatek.bluetooth.BluetoothHidActivity.ACTION_DEVICE_ADDED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 215
    iget-object v2, p0, Lcom/mediatek/bluetooth/hid/BluetoothHidActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2, v0}, Lcom/mediatek/bluetooth/hid/BluetoothHidActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 217
    iget-object v2, p0, Lcom/mediatek/bluetooth/hid/BluetoothHidActivity;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    sget-boolean v2, Lcom/mediatek/bluetooth/hid/BluetoothHidActivity;->sEnableBT:Z

    if-nez v2, :cond_0

    .line 220
    const-string v2, "[BT][HID][BluetoothHidActivity]"

    const-string v3, "bluetooth is not available! "

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    const-string v2, "[BT][HID][BluetoothHidActivity]"

    const-string v3, "turning on bluetooth......"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    sput-boolean v4, Lcom/mediatek/bluetooth/hid/BluetoothHidActivity;->sEnableBT:Z

    .line 225
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.bluetooth.adapter.action.REQUEST_ENABLE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 226
    .local v1, intentEnable:Landroid/content/Intent;
    const/high16 v2, 0x2000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 227
    const/4 v2, 0x2

    invoke-virtual {p0, v1, v2}, Lcom/mediatek/bluetooth/hid/BluetoothHidActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 7
    .parameter "menu"
    .parameter "v"
    .parameter "menuInfo"

    .prologue
    .line 674
    invoke-super {p0, p1, p2, p3}, Landroid/preference/PreferenceActivity;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 676
    :try_start_0
    invoke-direct {p0, p3}, Lcom/mediatek/bluetooth/hid/BluetoothHidActivity;->getDeviceFromMenuInfo(Landroid/view/ContextMenu$ContextMenuInfo;)Landroid/preference/Preference;

    move-result-object v1

    .line 677
    .local v1, pre:Landroid/preference/Preference;
    if-nez v1, :cond_1

    .line 710
    .end local v1           #pre:Landroid/preference/Preference;
    :cond_0
    :goto_0
    return-void

    .line 680
    .restart local v1       #pre:Landroid/preference/Preference;
    :cond_1
    invoke-virtual {v1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    const-string v4, "add_new_device"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 681
    invoke-virtual {p0}, Lcom/mediatek/bluetooth/hid/BluetoothHidActivity;->getmServerNotify()Lcom/mediatek/bluetooth/hid/IBluetoothHidServerNotify;

    move-result-object v3

    invoke-virtual {v1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/mediatek/bluetooth/hid/IBluetoothHidServerNotify;->getStateByAddr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 682
    .local v2, state:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "device state="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/mediatek/bluetooth/hid/BluetoothHidActivity;->debugLog(Ljava/lang/String;)V

    .line 684
    invoke-virtual {v1}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {p1, v3}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 685
    if-nez v2, :cond_2

    .line 686
    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    const v6, 0x7f050001

    invoke-interface {p1, v3, v4, v5, v6}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 705
    .end local v1           #pre:Landroid/preference/Preference;
    .end local v2           #state:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 706
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "hid getStateByAddr error"

    invoke-direct {p0, v3}, Lcom/mediatek/bluetooth/hid/BluetoothHidActivity;->debugLog(Ljava/lang/String;)V

    .line 707
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 687
    .end local v0           #e:Landroid/os/RemoteException;
    .restart local v1       #pre:Landroid/preference/Preference;
    .restart local v2       #state:Ljava/lang/String;
    :cond_2
    :try_start_1
    const-string v3, "disconnect"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "unplug_disconnect"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 689
    :cond_3
    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    const v6, 0x7f050001

    invoke-interface {p1, v3, v4, v5, v6}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    goto :goto_0

    .line 690
    :cond_4
    const-string v3, "connected"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 691
    const/4 v3, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    const v6, 0x7f050002

    invoke-interface {p1, v3, v4, v5, v6}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 692
    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    const v6, 0x7f050003

    invoke-interface {p1, v3, v4, v5, v6}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 693
    sget-boolean v3, Lcom/mediatek/bluetooth/hid/BluetoothHidActivity;->sBluetoothHidPts:Z

    if-eqz v3, :cond_0

    .line 694
    const/4 v3, 0x0

    const/16 v4, 0xa

    const/4 v5, 0x0

    const-string v6, "Get_idle"

    invoke-interface {p1, v3, v4, v5, v6}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 695
    const/4 v3, 0x0

    const/16 v4, 0x9

    const/4 v5, 0x0

    const-string v6, "Set_idle"

    invoke-interface {p1, v3, v4, v5, v6}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 696
    const/4 v3, 0x0

    const/16 v4, 0x8

    const/4 v5, 0x0

    const-string v6, "Get_report"

    invoke-interface {p1, v3, v4, v5, v6}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 697
    const/4 v3, 0x0

    const/4 v4, 0x7

    const/4 v5, 0x0

    const-string v6, "Set_report"

    invoke-interface {p1, v3, v4, v5, v6}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 698
    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    const-string v6, "Get_protocol"

    invoke-interface {p1, v3, v4, v5, v6}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 699
    const/4 v3, 0x0

    const/4 v4, 0x5

    const/4 v5, 0x0

    const-string v6, "Set_protocol"

    invoke-interface {p1, v3, v4, v5, v6}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 700
    const/4 v3, 0x0

    const/16 v4, 0xb

    const/4 v5, 0x0

    const-string v6, "Send_report"

    invoke-interface {p1, v3, v4, v5, v6}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 408
    const-string v0, "onDestroy"

    invoke-direct {p0, v0}, Lcom/mediatek/bluetooth/hid/BluetoothHidActivity;->debugLog(Ljava/lang/String;)V

    .line 409
    const/4 v0, 0x0

    sput-boolean v0, Lcom/mediatek/bluetooth/hid/BluetoothHidActivity;->sBluetoothHidPts:Z

    .line 410
    const-string v0, "onDestroy: unregister broadcastReceiver"

    invoke-direct {p0, v0}, Lcom/mediatek/bluetooth/hid/BluetoothHidActivity;->debugLog(Ljava/lang/String;)V

    .line 411
    iget-object v0, p0, Lcom/mediatek/bluetooth/hid/BluetoothHidActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/mediatek/bluetooth/hid/BluetoothHidActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 412
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 413
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 326
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 327
    const-string v0, "onPause"

    invoke-direct {p0, v0}, Lcom/mediatek/bluetooth/hid/BluetoothHidActivity;->debugLog(Ljava/lang/String;)V

    .line 328
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 7
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v3, 0x1

    .line 147
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    const-string v5, "add_new_device"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 148
    const-string v4, "Add New Devices"

    invoke-direct {p0, v4}, Lcom/mediatek/bluetooth/hid/BluetoothHidActivity;->debugLog(Ljava/lang/String;)V

    .line 149
    iget-object v4, p0, Lcom/mediatek/bluetooth/hid/BluetoothHidActivity;->mIntentToDevicePicker:Landroid/content/Intent;

    const-string v5, "android.bluetooth.devicepicker.extra.NEED_AUTH"

    invoke-virtual {v4, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 150
    iget-object v4, p0, Lcom/mediatek/bluetooth/hid/BluetoothHidActivity;->mIntentToDevicePicker:Landroid/content/Intent;

    const-string v5, "android.bluetooth.devicepicker.extra.FILTER_TYPE"

    const/4 v6, 0x7

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 152
    iget-object v4, p0, Lcom/mediatek/bluetooth/hid/BluetoothHidActivity;->mIntentToDevicePicker:Landroid/content/Intent;

    const-string v5, "android.bluetooth.devicepicker.extra.LAUNCH_PACKAGE"

    const-string v6, "com.mediatek.bluetooth"

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 153
    iget-object v4, p0, Lcom/mediatek/bluetooth/hid/BluetoothHidActivity;->mIntentToDevicePicker:Landroid/content/Intent;

    const-string v5, "android.bluetooth.devicepicker.extra.DEVICE_PICKER_LAUNCH_CLASS"

    const-class v6, Lcom/mediatek/bluetooth/hid/BluetoothHidReceiver;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 156
    iget-object v4, p0, Lcom/mediatek/bluetooth/hid/BluetoothHidActivity;->mIntentToDevicePicker:Landroid/content/Intent;

    invoke-virtual {p0, v4}, Lcom/mediatek/bluetooth/hid/BluetoothHidActivity;->startActivity(Landroid/content/Intent;)V

    .line 188
    :goto_0
    return v3

    .line 159
    :cond_0
    instance-of v4, p2, Landroid/preference/Preference;

    if-eqz v4, :cond_2

    .line 161
    :try_start_0
    invoke-virtual {p0}, Lcom/mediatek/bluetooth/hid/BluetoothHidActivity;->getmServerNotify()Lcom/mediatek/bluetooth/hid/IBluetoothHidServerNotify;

    move-result-object v4

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/mediatek/bluetooth/hid/IBluetoothHidServerNotify;->getStateByAddr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 162
    .local v1, state:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "device state="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/mediatek/bluetooth/hid/BluetoothHidActivity;->debugLog(Ljava/lang/String;)V

    .line 164
    if-eqz v1, :cond_1

    const-string v4, "disconnect"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "unplug_disconnect"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "authorize"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 168
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "hid connect "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/mediatek/bluetooth/hid/BluetoothHidActivity;->debugLog(Ljava/lang/String;)V

    .line 170
    invoke-virtual {p0}, Lcom/mediatek/bluetooth/hid/BluetoothHidActivity;->getmServerNotify()Lcom/mediatek/bluetooth/hid/IBluetoothHidServerNotify;

    move-result-object v4

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/mediatek/bluetooth/hid/IBluetoothHidServerNotify;->connectReq(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 183
    .end local v1           #state:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 184
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "hid connect error"

    invoke-direct {p0, v3}, Lcom/mediatek/bluetooth/hid/BluetoothHidActivity;->debugLog(Ljava/lang/String;)V

    .line 185
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 188
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_2
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v3

    goto :goto_0

    .line 172
    .restart local v1       #state:Ljava/lang/String;
    :cond_3
    :try_start_1
    const-string v4, "connected"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 173
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "hid disconnect "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/mediatek/bluetooth/hid/BluetoothHidActivity;->debugLog(Ljava/lang/String;)V

    .line 176
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 177
    .local v2, tmpIntent:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/mediatek/bluetooth/hid/BluetoothHidActivity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const-class v5, Lcom/mediatek/bluetooth/hid/BluetoothHidAlert;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    const-string v5, "device_addr"

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    const-string v5, "action"

    const-string v6, "disconnect"

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 180
    invoke-virtual {p0, v2}, Lcom/mediatek/bluetooth/hid/BluetoothHidActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method protected onRestart()V
    .locals 2

    .prologue
    .line 332
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onRestart()V

    .line 333
    const-string v0, "onRestart"

    invoke-direct {p0, v0}, Lcom/mediatek/bluetooth/hid/BluetoothHidActivity;->debugLog(Ljava/lang/String;)V

    .line 334
    iget-object v0, p0, Lcom/mediatek/bluetooth/hid/BluetoothHidActivity;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/mediatek/bluetooth/hid/BluetoothHidActivity;->sEnableBT:Z

    if-nez v0, :cond_0

    .line 337
    const-string v0, "[BT][HID][BluetoothHidActivity]"

    const-string v1, "bluetooth is not available! "

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    const-string v0, "[BT][HID][BluetoothHidActivity]"

    const-string v1, "turning on bluetooth......"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    const/4 v0, 0x1

    sput-boolean v0, Lcom/mediatek/bluetooth/hid/BluetoothHidActivity;->sEnableBT:Z

    .line 346
    :cond_0
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .parameter "state"

    .prologue
    .line 728
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 729
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 352
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 353
    const-string v0, "onResume"

    invoke-direct {p0, v0}, Lcom/mediatek/bluetooth/hid/BluetoothHidActivity;->debugLog(Ljava/lang/String;)V

    .line 354
    iget-object v0, p0, Lcom/mediatek/bluetooth/hid/BluetoothHidActivity;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/mediatek/bluetooth/hid/BluetoothHidActivity;->sEnableBT:Z

    if-nez v0, :cond_0

    .line 357
    const-string v0, "[BT][HID][BluetoothHidActivity]"

    const-string v1, "bluetooth is not available! "

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    invoke-virtual {p0}, Lcom/mediatek/bluetooth/hid/BluetoothHidActivity;->finish()V

    .line 361
    :cond_0
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .parameter "outState"

    .prologue
    .line 734
    return-void
.end method

.method protected onStart()V
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 288
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onStart()V

    .line 289
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onStart, enableBT="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v5, Lcom/mediatek/bluetooth/hid/BluetoothHidActivity;->sEnableBT:Z

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/bluetooth/hid/BluetoothHidActivity;->debugLog(Ljava/lang/String;)V

    .line 290
    invoke-virtual {p0}, Lcom/mediatek/bluetooth/hid/BluetoothHidActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 291
    .local v1, data:Landroid/os/Bundle;
    if-eqz v1, :cond_0

    .line 292
    const-string v2, "check BLUETOOTH_HID_PTS in onStart"

    invoke-direct {p0, v2}, Lcom/mediatek/bluetooth/hid/BluetoothHidActivity;->debugLog(Ljava/lang/String;)V

    .line 293
    const-string v2, "BLUETOOTH_HID_PTS"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 294
    .local v0, action:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 295
    const-string v2, "TRUE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    move v2, v3

    :goto_0
    sput-boolean v2, Lcom/mediatek/bluetooth/hid/BluetoothHidActivity;->sBluetoothHidPts:Z

    .line 299
    .end local v0           #action:Ljava/lang/String;
    :cond_0
    sget-boolean v2, Lcom/mediatek/bluetooth/hid/BluetoothHidActivity;->sEnableBT:Z

    if-nez v2, :cond_2

    .line 300
    new-instance v2, Landroid/content/Intent;

    const-class v5, Lcom/mediatek/bluetooth/hid/BluetoothHidService;

    invoke-direct {v2, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v2}, Lcom/mediatek/bluetooth/hid/BluetoothHidActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 301
    iget-object v2, p0, Lcom/mediatek/bluetooth/hid/BluetoothHidActivity;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v2

    const/16 v5, 0xd

    if-eq v2, v5, :cond_4

    .line 302
    new-instance v2, Landroid/content/Intent;

    const-class v5, Lcom/mediatek/bluetooth/hid/BluetoothHidService;

    invoke-direct {v2, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v5, p0, Lcom/mediatek/bluetooth/hid/BluetoothHidActivity;->mHidServerNotifyConn:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v2, v5, v3}, Lcom/mediatek/bluetooth/hid/BluetoothHidActivity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 304
    sput-boolean v4, Lcom/mediatek/bluetooth/hid/BluetoothHidActivity;->sServiceBinded:Z

    .line 305
    invoke-virtual {p0}, Lcom/mediatek/bluetooth/hid/BluetoothHidActivity;->finish()V

    .line 312
    :cond_1
    :goto_1
    const-string v2, "hid success bind service in onStart"

    invoke-direct {p0, v2}, Lcom/mediatek/bluetooth/hid/BluetoothHidActivity;->debugLog(Ljava/lang/String;)V

    .line 322
    :cond_2
    return-void

    .restart local v0       #action:Ljava/lang/String;
    :cond_3
    move v2, v4

    .line 295
    goto :goto_0

    .line 310
    .end local v0           #action:Ljava/lang/String;
    :cond_4
    invoke-virtual {p0}, Lcom/mediatek/bluetooth/hid/BluetoothHidActivity;->finish()V

    goto :goto_1
.end method

.method protected onStop()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 382
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onStop()V

    .line 384
    iget-object v1, p0, Lcom/mediatek/bluetooth/hid/BluetoothHidActivity;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 385
    invoke-direct {p0}, Lcom/mediatek/bluetooth/hid/BluetoothHidActivity;->restorePreferenceList()V

    .line 387
    :try_start_0
    sget-boolean v1, Lcom/mediatek/bluetooth/hid/BluetoothHidActivity;->sServiceBinded:Z

    if-eqz v1, :cond_0

    .line 388
    const/4 v1, 0x0

    sput-boolean v1, Lcom/mediatek/bluetooth/hid/BluetoothHidActivity;->sServiceBinded:Z

    .line 389
    const-string v1, "onStop,unbindservice"

    invoke-direct {p0, v1}, Lcom/mediatek/bluetooth/hid/BluetoothHidActivity;->debugLog(Ljava/lang/String;)V

    .line 390
    iget-object v1, p0, Lcom/mediatek/bluetooth/hid/BluetoothHidActivity;->mHidServerNotifyConn:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v1}, Lcom/mediatek/bluetooth/hid/BluetoothHidActivity;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 398
    :cond_0
    :goto_0
    sget-object v1, Lcom/mediatek/bluetooth/hid/BluetoothHidActivity;->sDeviceList:Landroid/preference/PreferenceCategory;

    invoke-virtual {v1}, Landroid/preference/PreferenceCategory;->removeAll()V

    .line 402
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStop:, enable="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/mediatek/bluetooth/hid/BluetoothHidActivity;->sEnableBT:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/bluetooth/hid/BluetoothHidActivity;->debugLog(Ljava/lang/String;)V

    .line 403
    sput-boolean v3, Lcom/mediatek/bluetooth/hid/BluetoothHidActivity;->sEnableBT:Z

    .line 404
    return-void

    .line 392
    :catch_0
    move-exception v0

    .line 394
    .local v0, e:Ljava/lang/IllegalArgumentException;
    const-string v1, "[BT][HID][BluetoothHidActivity]"

    const-string v2, "onStop,unbindservice error"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    invoke-virtual {p0}, Lcom/mediatek/bluetooth/hid/BluetoothHidActivity;->finish()V

    goto :goto_0
.end method
