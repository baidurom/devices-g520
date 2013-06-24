.class public Lcom/mediatek/phone/OutgoingCallReceiver;
.super Landroid/content/BroadcastReceiver;
.source "OutgoingCallReceiver.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "OutgoingCallReceiver"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private newSipCallOptionHandlerIntent(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/Intent;
    .locals 3
    .parameter "context"
    .parameter "original"

    .prologue
    .line 99
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.phone.SIP_SELECT_PHONE"

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 100
    .local v0, selectPhoneIntent:Landroid/content/Intent;
    const-class v1, Lcom/android/phone/SipCallOptionHandler;

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 101
    const-string v1, "android.phone.extra.NEW_CALL_INTENT"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 102
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 103
    return-object v0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v8, -0x1

    const/4 v7, 0x0

    .line 27
    const-string v5, "com.mediatek.phone.OutgoingCallReceiver"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 29
    new-instance v0, Landroid/content/Intent;

    const-string v5, "android.intent.action.NEW_OUTGOING_CALL"

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 32
    .local v0, broadcastIntent:Landroid/content/Intent;
    invoke-static {p1, p2}, Lcom/mediatek/calloption/CallOptionUtils;->getInitialNumber(Landroid/content/Context;Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v2

    .line 34
    .local v2, number:Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 35
    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->isUriNumber(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 36
    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->specialNumberTransfer(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 42
    :cond_0
    invoke-static {p1, p2, v2, v7, p0}, Lcom/android/phone/OutgoingCallBroadcaster;->sendNewCallBroadcast(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;ZLandroid/content/BroadcastReceiver;)V

    .line 86
    .end local v0           #broadcastIntent:Landroid/content/Intent;
    .end local v2           #number:Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 60
    :cond_2
    const-string v5, "android.intent.action.NEW_OUTGOING_CALL"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 62
    invoke-virtual {p0}, Lcom/mediatek/phone/OutgoingCallReceiver;->getResultData()Ljava/lang/String;

    move-result-object v2

    .line 64
    .restart local v2       #number:Ljava/lang/String;
    const-string v5, "android.phone.extra.ORIGINAL_URI"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 65
    .local v3, originalUri:Ljava/lang/String;
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 67
    .local v4, uri:Landroid/net/Uri;
    new-instance v1, Landroid/content/Intent;

    const-string v5, "android.intent.action.CALL"

    invoke-direct {v1, v5, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 68
    .local v1, newIntent:Landroid/content/Intent;
    const-string v5, "com.android.phone.extra.video"

    const-string v6, "com.android.phone.extra.video"

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 71
    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->isUriNumber(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    const-string v5, "com.android.phone.extra.slot"

    invoke-virtual {p2, v5, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    if-eq v5, v8, :cond_4

    :cond_3
    const-string v5, "sip"

    invoke-virtual {v4}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 73
    :cond_4
    const-string v5, "sip"

    invoke-virtual {v4}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->isUriNumber(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 74
    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 75
    const-string v5, "android.phone.extra.ACTUAL_NUMBER_TO_DIAL"

    invoke-virtual {v1, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 77
    :cond_5
    invoke-virtual {p0, p1, v1}, Lcom/mediatek/phone/OutgoingCallReceiver;->startSipCallOptionHandler(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 79
    :cond_6
    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->specialNumberTransfer(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 80
    const-string v5, "android.phone.extra.ACTUAL_NUMBER_TO_DIAL"

    invoke-virtual {v1, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 81
    const-string v5, "com.android.phone.extra.slot"

    const-string v6, "com.android.phone.extra.slot"

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 82
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v5

    iget-object v5, v5, Lcom/android/phone/PhoneApp;->callController:Lcom/android/phone/CallController;

    invoke-virtual {v5, v1}, Lcom/android/phone/CallController;->placeCall(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method

.method protected startSipCallOptionHandler(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 90
    invoke-static {p2, p1}, Landroid/telephony/PhoneNumberUtils;->getNumberFromIntent(Landroid/content/Intent;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 91
    .local v0, number:Ljava/lang/String;
    const-string v3, "sip"

    const/4 v4, 0x0

    invoke-static {v3, v0, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 92
    .local v2, uri:Landroid/net/Uri;
    invoke-virtual {p2, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 93
    invoke-direct {p0, p1, p2}, Lcom/mediatek/phone/OutgoingCallReceiver;->newSipCallOptionHandlerIntent(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v1

    .line 94
    .local v1, sipIntent:Landroid/content/Intent;
    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 95
    return-void
.end method
