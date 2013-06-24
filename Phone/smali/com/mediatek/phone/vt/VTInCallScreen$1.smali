.class Lcom/mediatek/phone/vt/VTInCallScreen$1;
.super Landroid/os/Handler;
.source "VTInCallScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/phone/vt/VTInCallScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/phone/vt/VTInCallScreen;


# direct methods
.method constructor <init>(Lcom/mediatek/phone/vt/VTInCallScreen;)V
    .locals 0
    .parameter

    .prologue
    .line 234
    iput-object p1, p0, Lcom/mediatek/phone/vt/VTInCallScreen$1;->this$0:Lcom/mediatek/phone/vt/VTInCallScreen;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .parameter "msg"

    .prologue
    const v8, 0x7f0d003f

    const v7, 0x7f0d0040

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 239
    iget-object v2, p0, Lcom/mediatek/phone/vt/VTInCallScreen$1;->this$0:Lcom/mediatek/phone/vt/VTInCallScreen;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "VTInCallScreen Handler message:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/mediatek/phone/vt/VTInCallScreen;->access$000(Lcom/mediatek/phone/vt/VTInCallScreen;Ljava/lang/String;)V

    .line 242
    iget v2, p1, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_0

    .line 479
    const-string v2, "VTInCallScreen"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mHandler: unexpected message: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    :cond_0
    :goto_0
    return-void

    .line 246
    :sswitch_0
    iget-object v2, p0, Lcom/mediatek/phone/vt/VTInCallScreen$1;->this$0:Lcom/mediatek/phone/vt/VTInCallScreen;

    const-string v3, "- handler : VT_MSG_DISCONNECTED ! "

    #calls: Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/mediatek/phone/vt/VTInCallScreen;->access$000(Lcom/mediatek/phone/vt/VTInCallScreen;Ljava/lang/String;)V

    .line 248
    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v2

    iput-boolean v6, v2, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTVideoConnected:Z

    .line 249
    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v2

    iput-boolean v6, v2, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTHasReceiveFirstFrame:Z

    .line 250
    iget-object v2, p0, Lcom/mediatek/phone/vt/VTInCallScreen$1;->this$0:Lcom/mediatek/phone/vt/VTInCallScreen;

    iget-object v3, p0, Lcom/mediatek/phone/vt/VTInCallScreen$1;->this$0:Lcom/mediatek/phone/vt/VTInCallScreen;

    invoke-virtual {v3}, Lcom/mediatek/phone/vt/VTInCallScreen;->getVTScreenMode()Lcom/android/phone/Constants$VTScreenMode;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/mediatek/phone/vt/VTInCallScreen;->updateVTScreen(Lcom/android/phone/Constants$VTScreenMode;)V

    goto :goto_0

    .line 255
    :sswitch_1
    iget-object v2, p0, Lcom/mediatek/phone/vt/VTInCallScreen$1;->this$0:Lcom/mediatek/phone/vt/VTInCallScreen;

    const-string v3, "- handler : VT_MSG_CONNECTED ! "

    #calls: Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/mediatek/phone/vt/VTInCallScreen;->access$000(Lcom/mediatek/phone/vt/VTInCallScreen;Ljava/lang/String;)V

    .line 257
    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v2

    iput-boolean v5, v2, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTVideoConnected:Z

    .line 258
    iget-object v2, p0, Lcom/mediatek/phone/vt/VTInCallScreen$1;->this$0:Lcom/mediatek/phone/vt/VTInCallScreen;

    iget-object v3, p0, Lcom/mediatek/phone/vt/VTInCallScreen$1;->this$0:Lcom/mediatek/phone/vt/VTInCallScreen;

    invoke-virtual {v3}, Lcom/mediatek/phone/vt/VTInCallScreen;->getVTScreenMode()Lcom/android/phone/Constants$VTScreenMode;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/mediatek/phone/vt/VTInCallScreen;->updateVTScreen(Lcom/android/phone/Constants$VTScreenMode;)V

    goto :goto_0

    .line 263
    :sswitch_2
    iget-object v2, p0, Lcom/mediatek/phone/vt/VTInCallScreen$1;->this$0:Lcom/mediatek/phone/vt/VTInCallScreen;

    const-string v3, "- handler : VT_MSG_START_COUNTER ! "

    #calls: Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/mediatek/phone/vt/VTInCallScreen;->access$000(Lcom/mediatek/phone/vt/VTInCallScreen;Ljava/lang/String;)V

    .line 265
    iget-object v2, p0, Lcom/mediatek/phone/vt/VTInCallScreen$1;->this$0:Lcom/mediatek/phone/vt/VTInCallScreen;

    invoke-virtual {v2}, Lcom/mediatek/phone/vt/VTInCallScreen;->onReceiveVTManagerStartCounter()V

    goto :goto_0

    .line 273
    :sswitch_3
    iget-object v2, p0, Lcom/mediatek/phone/vt/VTInCallScreen$1;->this$0:Lcom/mediatek/phone/vt/VTInCallScreen;

    #calls: Lcom/mediatek/phone/vt/VTInCallScreen;->setVTSettingToVTManager()V
    invoke-static {v2}, Lcom/mediatek/phone/vt/VTInCallScreen;->access$100(Lcom/mediatek/phone/vt/VTInCallScreen;)V

    goto :goto_0

    .line 277
    :sswitch_4
    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v2

    iput-boolean v6, v2, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTVideoReady:Z

    .line 278
    iget-object v2, p0, Lcom/mediatek/phone/vt/VTInCallScreen$1;->this$0:Lcom/mediatek/phone/vt/VTInCallScreen;

    iget-object v3, p0, Lcom/mediatek/phone/vt/VTInCallScreen$1;->this$0:Lcom/mediatek/phone/vt/VTInCallScreen;

    invoke-virtual {v3}, Lcom/mediatek/phone/vt/VTInCallScreen;->getVTScreenMode()Lcom/android/phone/Constants$VTScreenMode;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/mediatek/phone/vt/VTInCallScreen;->updateVTScreen(Lcom/android/phone/Constants$VTScreenMode;)V

    goto :goto_0

    .line 283
    :sswitch_5
    iget-object v2, p0, Lcom/mediatek/phone/vt/VTInCallScreen$1;->this$0:Lcom/mediatek/phone/vt/VTInCallScreen;

    const-string v3, "- handler : VT_MSG_READY ! "

    #calls: Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/mediatek/phone/vt/VTInCallScreen;->access$000(Lcom/mediatek/phone/vt/VTInCallScreen;Ljava/lang/String;)V

    .line 285
    iget-object v2, p0, Lcom/mediatek/phone/vt/VTInCallScreen$1;->this$0:Lcom/mediatek/phone/vt/VTInCallScreen;

    #calls: Lcom/mediatek/phone/vt/VTInCallScreen;->onReceiveVTManagerReady()V
    invoke-static {v2}, Lcom/mediatek/phone/vt/VTInCallScreen;->access$200(Lcom/mediatek/phone/vt/VTInCallScreen;)V

    goto :goto_0

    .line 290
    :sswitch_6
    iget-object v2, p0, Lcom/mediatek/phone/vt/VTInCallScreen$1;->this$0:Lcom/mediatek/phone/vt/VTInCallScreen;

    const-string v3, "- handler : VT_MSG_EM_INDICATION ! "

    #calls: Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/mediatek/phone/vt/VTInCallScreen;->access$000(Lcom/mediatek/phone/vt/VTInCallScreen;Ljava/lang/String;)V

    .line 292
    iget-object v3, p0, Lcom/mediatek/phone/vt/VTInCallScreen$1;->this$0:Lcom/mediatek/phone/vt/VTInCallScreen;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    #calls: Lcom/mediatek/phone/vt/VTInCallScreen;->showToast(Ljava/lang/String;)V
    invoke-static {v3, v2}, Lcom/mediatek/phone/vt/VTInCallScreen;->access$300(Lcom/mediatek/phone/vt/VTInCallScreen;Ljava/lang/String;)V

    goto :goto_0

    .line 297
    :sswitch_7
    iget-object v2, p0, Lcom/mediatek/phone/vt/VTInCallScreen$1;->this$0:Lcom/mediatek/phone/vt/VTInCallScreen;

    const-string v3, "- handler : VT_PEER_SNAPSHOT_OK ! "

    #calls: Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/mediatek/phone/vt/VTInCallScreen;->access$000(Lcom/mediatek/phone/vt/VTInCallScreen;Ljava/lang/String;)V

    .line 299
    iget-object v2, p0, Lcom/mediatek/phone/vt/VTInCallScreen$1;->this$0:Lcom/mediatek/phone/vt/VTInCallScreen;

    iget-object v3, p0, Lcom/mediatek/phone/vt/VTInCallScreen$1;->this$0:Lcom/mediatek/phone/vt/VTInCallScreen;

    invoke-virtual {v3}, Lcom/mediatek/phone/vt/VTInCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d003d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/mediatek/phone/vt/VTInCallScreen;->showToast(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/mediatek/phone/vt/VTInCallScreen;->access$300(Lcom/mediatek/phone/vt/VTInCallScreen;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 304
    :sswitch_8
    iget-object v2, p0, Lcom/mediatek/phone/vt/VTInCallScreen$1;->this$0:Lcom/mediatek/phone/vt/VTInCallScreen;

    const-string v3, "- handler : VT_PEER_SNAPSHOT_FAIL ! "

    #calls: Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/mediatek/phone/vt/VTInCallScreen;->access$000(Lcom/mediatek/phone/vt/VTInCallScreen;Ljava/lang/String;)V

    .line 306
    iget-object v2, p0, Lcom/mediatek/phone/vt/VTInCallScreen$1;->this$0:Lcom/mediatek/phone/vt/VTInCallScreen;

    iget-object v3, p0, Lcom/mediatek/phone/vt/VTInCallScreen$1;->this$0:Lcom/mediatek/phone/vt/VTInCallScreen;

    invoke-virtual {v3}, Lcom/mediatek/phone/vt/VTInCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d003e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/mediatek/phone/vt/VTInCallScreen;->showToast(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/mediatek/phone/vt/VTInCallScreen;->access$300(Lcom/mediatek/phone/vt/VTInCallScreen;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 311
    :sswitch_9
    iget-object v2, p0, Lcom/mediatek/phone/vt/VTInCallScreen$1;->this$0:Lcom/mediatek/phone/vt/VTInCallScreen;

    const-string v3, "- handler : VT_ERROR_CALL_DISCONNECT ! "

    #calls: Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/mediatek/phone/vt/VTInCallScreen;->access$000(Lcom/mediatek/phone/vt/VTInCallScreen;Ljava/lang/String;)V

    .line 313
    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v2

    iget-boolean v2, v2, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTInEndingCall:Z

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/mediatek/phone/vt/VTInCallScreen$1;->this$0:Lcom/mediatek/phone/vt/VTInCallScreen;

    #getter for: Lcom/mediatek/phone/vt/VTInCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v2}, Lcom/mediatek/phone/vt/VTInCallScreen;->access$400(Lcom/mediatek/phone/vt/VTInCallScreen;)Lcom/android/internal/telephony/CallManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-eq v2, v3, :cond_1

    .line 315
    iget-object v2, p0, Lcom/mediatek/phone/vt/VTInCallScreen$1;->this$0:Lcom/mediatek/phone/vt/VTInCallScreen;

    iget-object v3, p0, Lcom/mediatek/phone/vt/VTInCallScreen$1;->this$0:Lcom/mediatek/phone/vt/VTInCallScreen;

    invoke-virtual {v3}, Lcom/mediatek/phone/vt/VTInCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/mediatek/phone/vt/VTInCallScreen;->showToast(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/mediatek/phone/vt/VTInCallScreen;->access$300(Lcom/mediatek/phone/vt/VTInCallScreen;Ljava/lang/String;)V

    .line 317
    iget-object v2, p0, Lcom/mediatek/phone/vt/VTInCallScreen$1;->this$0:Lcom/mediatek/phone/vt/VTInCallScreen;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "toast is shown, string is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/phone/vt/VTInCallScreen$1;->this$0:Lcom/mediatek/phone/vt/VTInCallScreen;

    invoke-virtual {v4}, Lcom/mediatek/phone/vt/VTInCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/mediatek/phone/vt/VTInCallScreen;->access$000(Lcom/mediatek/phone/vt/VTInCallScreen;Ljava/lang/String;)V

    .line 320
    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v2

    iput-boolean v5, v2, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTInEndingCall:Z

    .line 322
    :cond_1
    iget-object v2, p0, Lcom/mediatek/phone/vt/VTInCallScreen$1;->this$0:Lcom/mediatek/phone/vt/VTInCallScreen;

    #getter for: Lcom/mediatek/phone/vt/VTInCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v2}, Lcom/mediatek/phone/vt/VTInCallScreen;->access$400(Lcom/mediatek/phone/vt/VTInCallScreen;)Lcom/android/internal/telephony/CallManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 324
    iget-object v2, p0, Lcom/mediatek/phone/vt/VTInCallScreen$1;->this$0:Lcom/mediatek/phone/vt/VTInCallScreen;

    const-string v3, "- handler : (VT_ERROR_CALL_DISCONNECT) - ForegroundCall exists, so hangup it ! "

    #calls: Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/mediatek/phone/vt/VTInCallScreen;->access$000(Lcom/mediatek/phone/vt/VTInCallScreen;Ljava/lang/String;)V

    .line 328
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/phone/vt/VTInCallScreen$1;->this$0:Lcom/mediatek/phone/vt/VTInCallScreen;

    #getter for: Lcom/mediatek/phone/vt/VTInCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v2}, Lcom/mediatek/phone/vt/VTInCallScreen;->access$400(Lcom/mediatek/phone/vt/VTInCallScreen;)Lcom/android/internal/telephony/CallManager;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/phone/vt/VTInCallScreen$1;->this$0:Lcom/mediatek/phone/vt/VTInCallScreen;

    #getter for: Lcom/mediatek/phone/vt/VTInCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v3}, Lcom/mediatek/phone/vt/VTInCallScreen;->access$400(Lcom/mediatek/phone/vt/VTInCallScreen;)Lcom/android/internal/telephony/CallManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/CallManager;->hangupActiveCall(Lcom/android/internal/telephony/Call;)V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 329
    :catch_0
    move-exception v0

    .line 331
    .local v0, e:Lcom/android/internal/telephony/CallStateException;
    iget-object v2, p0, Lcom/mediatek/phone/vt/VTInCallScreen$1;->this$0:Lcom/mediatek/phone/vt/VTInCallScreen;

    const-string v3, "- handler : (VT_ERROR_CALL_DISCONNECT) - CallStateException ! "

    #calls: Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/mediatek/phone/vt/VTInCallScreen;->access$000(Lcom/mediatek/phone/vt/VTInCallScreen;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 339
    .end local v0           #e:Lcom/android/internal/telephony/CallStateException;
    :sswitch_a
    iget-object v2, p0, Lcom/mediatek/phone/vt/VTInCallScreen$1;->this$0:Lcom/mediatek/phone/vt/VTInCallScreen;

    const-string v3, "- handler : VT_NORMAL_END_SESSION_COMMAND ! "

    #calls: Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/mediatek/phone/vt/VTInCallScreen;->access$000(Lcom/mediatek/phone/vt/VTInCallScreen;Ljava/lang/String;)V

    .line 341
    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v2

    iget-boolean v2, v2, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTInEndingCall:Z

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/mediatek/phone/vt/VTInCallScreen$1;->this$0:Lcom/mediatek/phone/vt/VTInCallScreen;

    #getter for: Lcom/mediatek/phone/vt/VTInCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v2}, Lcom/mediatek/phone/vt/VTInCallScreen;->access$400(Lcom/mediatek/phone/vt/VTInCallScreen;)Lcom/android/internal/telephony/CallManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-eq v2, v3, :cond_2

    .line 343
    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v2

    iput-boolean v5, v2, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTInEndingCall:Z

    .line 345
    :cond_2
    iget-object v2, p0, Lcom/mediatek/phone/vt/VTInCallScreen$1;->this$0:Lcom/mediatek/phone/vt/VTInCallScreen;

    #getter for: Lcom/mediatek/phone/vt/VTInCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v2}, Lcom/mediatek/phone/vt/VTInCallScreen;->access$400(Lcom/mediatek/phone/vt/VTInCallScreen;)Lcom/android/internal/telephony/CallManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 347
    iget-object v2, p0, Lcom/mediatek/phone/vt/VTInCallScreen$1;->this$0:Lcom/mediatek/phone/vt/VTInCallScreen;

    const-string v3, "- handler : (VT_NORMAL_END_SESSION_COMMAND) - ForegroundCall exists, so hangup it ! "

    #calls: Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/mediatek/phone/vt/VTInCallScreen;->access$000(Lcom/mediatek/phone/vt/VTInCallScreen;Ljava/lang/String;)V

    .line 351
    :try_start_1
    iget-object v2, p0, Lcom/mediatek/phone/vt/VTInCallScreen$1;->this$0:Lcom/mediatek/phone/vt/VTInCallScreen;

    #getter for: Lcom/mediatek/phone/vt/VTInCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v2}, Lcom/mediatek/phone/vt/VTInCallScreen;->access$400(Lcom/mediatek/phone/vt/VTInCallScreen;)Lcom/android/internal/telephony/CallManager;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/phone/vt/VTInCallScreen$1;->this$0:Lcom/mediatek/phone/vt/VTInCallScreen;

    #getter for: Lcom/mediatek/phone/vt/VTInCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v3}, Lcom/mediatek/phone/vt/VTInCallScreen;->access$400(Lcom/mediatek/phone/vt/VTInCallScreen;)Lcom/android/internal/telephony/CallManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/CallManager;->hangupActiveCall(Lcom/android/internal/telephony/Call;)V
    :try_end_1
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 352
    :catch_1
    move-exception v0

    .line 354
    .restart local v0       #e:Lcom/android/internal/telephony/CallStateException;
    iget-object v2, p0, Lcom/mediatek/phone/vt/VTInCallScreen$1;->this$0:Lcom/mediatek/phone/vt/VTInCallScreen;

    const-string v3, "- handler : (VT_NORMAL_END_SESSION_COMMAND) - CallStateException ! "

    #calls: Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/mediatek/phone/vt/VTInCallScreen;->access$000(Lcom/mediatek/phone/vt/VTInCallScreen;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 363
    .end local v0           #e:Lcom/android/internal/telephony/CallStateException;
    :sswitch_b
    iget-object v2, p0, Lcom/mediatek/phone/vt/VTInCallScreen$1;->this$0:Lcom/mediatek/phone/vt/VTInCallScreen;

    const-string v3, "- handler : VT_ERROR_START_VTS_FAIL ! "

    #calls: Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/mediatek/phone/vt/VTInCallScreen;->access$000(Lcom/mediatek/phone/vt/VTInCallScreen;Ljava/lang/String;)V

    .line 365
    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v2

    iget-boolean v2, v2, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTInEndingCall:Z

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/mediatek/phone/vt/VTInCallScreen$1;->this$0:Lcom/mediatek/phone/vt/VTInCallScreen;

    #getter for: Lcom/mediatek/phone/vt/VTInCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v2}, Lcom/mediatek/phone/vt/VTInCallScreen;->access$400(Lcom/mediatek/phone/vt/VTInCallScreen;)Lcom/android/internal/telephony/CallManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-eq v2, v3, :cond_3

    .line 367
    iget v2, p1, Landroid/os/Message;->arg2:I

    if-ne v5, v2, :cond_4

    .line 368
    iget-object v2, p0, Lcom/mediatek/phone/vt/VTInCallScreen$1;->this$0:Lcom/mediatek/phone/vt/VTInCallScreen;

    iget-object v3, p0, Lcom/mediatek/phone/vt/VTInCallScreen$1;->this$0:Lcom/mediatek/phone/vt/VTInCallScreen;

    invoke-virtual {v3}, Lcom/mediatek/phone/vt/VTInCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d0099

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/mediatek/phone/vt/VTInCallScreen;->showToast(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/mediatek/phone/vt/VTInCallScreen;->access$300(Lcom/mediatek/phone/vt/VTInCallScreen;Ljava/lang/String;)V

    .line 372
    :goto_1
    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v2

    iput-boolean v5, v2, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTInEndingCall:Z

    .line 376
    :cond_3
    iget-object v2, p0, Lcom/mediatek/phone/vt/VTInCallScreen$1;->this$0:Lcom/mediatek/phone/vt/VTInCallScreen;

    #getter for: Lcom/mediatek/phone/vt/VTInCallScreen;->mInCallScreen:Lcom/android/phone/InCallScreen;
    invoke-static {v2}, Lcom/mediatek/phone/vt/VTInCallScreen;->access$500(Lcom/mediatek/phone/vt/VTInCallScreen;)Lcom/android/phone/InCallScreen;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/phone/InCallScreen;->internalHangupAll()V

    goto/16 :goto_0

    .line 370
    :cond_4
    iget-object v2, p0, Lcom/mediatek/phone/vt/VTInCallScreen$1;->this$0:Lcom/mediatek/phone/vt/VTInCallScreen;

    iget-object v3, p0, Lcom/mediatek/phone/vt/VTInCallScreen$1;->this$0:Lcom/mediatek/phone/vt/VTInCallScreen;

    invoke-virtual {v3}, Lcom/mediatek/phone/vt/VTInCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/mediatek/phone/vt/VTInCallScreen;->showToast(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/mediatek/phone/vt/VTInCallScreen;->access$300(Lcom/mediatek/phone/vt/VTInCallScreen;Ljava/lang/String;)V

    goto :goto_1

    .line 381
    :sswitch_c
    iget-object v2, p0, Lcom/mediatek/phone/vt/VTInCallScreen$1;->this$0:Lcom/mediatek/phone/vt/VTInCallScreen;

    const-string v3, "- handler : VT_ERROR_CAMERA ! "

    #calls: Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/mediatek/phone/vt/VTInCallScreen;->access$000(Lcom/mediatek/phone/vt/VTInCallScreen;Ljava/lang/String;)V

    .line 383
    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v2

    iget-boolean v2, v2, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTInEndingCall:Z

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/mediatek/phone/vt/VTInCallScreen$1;->this$0:Lcom/mediatek/phone/vt/VTInCallScreen;

    #getter for: Lcom/mediatek/phone/vt/VTInCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v2}, Lcom/mediatek/phone/vt/VTInCallScreen;->access$400(Lcom/mediatek/phone/vt/VTInCallScreen;)Lcom/android/internal/telephony/CallManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-eq v2, v3, :cond_5

    .line 385
    iget v2, p1, Landroid/os/Message;->arg2:I

    if-ne v5, v2, :cond_6

    .line 386
    iget-object v2, p0, Lcom/mediatek/phone/vt/VTInCallScreen$1;->this$0:Lcom/mediatek/phone/vt/VTInCallScreen;

    iget-object v3, p0, Lcom/mediatek/phone/vt/VTInCallScreen$1;->this$0:Lcom/mediatek/phone/vt/VTInCallScreen;

    invoke-virtual {v3}, Lcom/mediatek/phone/vt/VTInCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d0098

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/mediatek/phone/vt/VTInCallScreen;->showToast(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/mediatek/phone/vt/VTInCallScreen;->access$300(Lcom/mediatek/phone/vt/VTInCallScreen;Ljava/lang/String;)V

    .line 390
    :goto_2
    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v2

    iput-boolean v5, v2, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTInEndingCall:Z

    .line 394
    :cond_5
    iget-object v2, p0, Lcom/mediatek/phone/vt/VTInCallScreen$1;->this$0:Lcom/mediatek/phone/vt/VTInCallScreen;

    const-string v3, "- handler : (VT_ERROR_CAMERA) - ForegroundCall exists, so hangup it ! "

    #calls: Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/mediatek/phone/vt/VTInCallScreen;->access$000(Lcom/mediatek/phone/vt/VTInCallScreen;Ljava/lang/String;)V

    .line 397
    iget-object v2, p0, Lcom/mediatek/phone/vt/VTInCallScreen$1;->this$0:Lcom/mediatek/phone/vt/VTInCallScreen;

    #getter for: Lcom/mediatek/phone/vt/VTInCallScreen;->mInCallScreen:Lcom/android/phone/InCallScreen;
    invoke-static {v2}, Lcom/mediatek/phone/vt/VTInCallScreen;->access$500(Lcom/mediatek/phone/vt/VTInCallScreen;)Lcom/android/phone/InCallScreen;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/phone/InCallScreen;->internalHangupAll()V

    goto/16 :goto_0

    .line 388
    :cond_6
    iget-object v2, p0, Lcom/mediatek/phone/vt/VTInCallScreen$1;->this$0:Lcom/mediatek/phone/vt/VTInCallScreen;

    iget-object v3, p0, Lcom/mediatek/phone/vt/VTInCallScreen$1;->this$0:Lcom/mediatek/phone/vt/VTInCallScreen;

    invoke-virtual {v3}, Lcom/mediatek/phone/vt/VTInCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/mediatek/phone/vt/VTInCallScreen;->showToast(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/mediatek/phone/vt/VTInCallScreen;->access$300(Lcom/mediatek/phone/vt/VTInCallScreen;Ljava/lang/String;)V

    goto :goto_2

    .line 402
    :sswitch_d
    iget-object v2, p0, Lcom/mediatek/phone/vt/VTInCallScreen$1;->this$0:Lcom/mediatek/phone/vt/VTInCallScreen;

    const-string v3, "- handler : VT_ERROR_MEDIA_SERVER_DIED ! "

    #calls: Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/mediatek/phone/vt/VTInCallScreen;->access$000(Lcom/mediatek/phone/vt/VTInCallScreen;Ljava/lang/String;)V

    .line 404
    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v2

    iget-boolean v2, v2, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTInEndingCall:Z

    if-nez v2, :cond_7

    iget-object v2, p0, Lcom/mediatek/phone/vt/VTInCallScreen$1;->this$0:Lcom/mediatek/phone/vt/VTInCallScreen;

    #getter for: Lcom/mediatek/phone/vt/VTInCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v2}, Lcom/mediatek/phone/vt/VTInCallScreen;->access$400(Lcom/mediatek/phone/vt/VTInCallScreen;)Lcom/android/internal/telephony/CallManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-eq v2, v3, :cond_7

    .line 406
    iget-object v2, p0, Lcom/mediatek/phone/vt/VTInCallScreen$1;->this$0:Lcom/mediatek/phone/vt/VTInCallScreen;

    iget-object v3, p0, Lcom/mediatek/phone/vt/VTInCallScreen$1;->this$0:Lcom/mediatek/phone/vt/VTInCallScreen;

    invoke-virtual {v3}, Lcom/mediatek/phone/vt/VTInCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/mediatek/phone/vt/VTInCallScreen;->showToast(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/mediatek/phone/vt/VTInCallScreen;->access$300(Lcom/mediatek/phone/vt/VTInCallScreen;Ljava/lang/String;)V

    .line 407
    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v2

    iput-boolean v5, v2, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTInEndingCall:Z

    .line 409
    :cond_7
    iget-object v2, p0, Lcom/mediatek/phone/vt/VTInCallScreen$1;->this$0:Lcom/mediatek/phone/vt/VTInCallScreen;

    #getter for: Lcom/mediatek/phone/vt/VTInCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v2}, Lcom/mediatek/phone/vt/VTInCallScreen;->access$400(Lcom/mediatek/phone/vt/VTInCallScreen;)Lcom/android/internal/telephony/CallManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 411
    iget-object v2, p0, Lcom/mediatek/phone/vt/VTInCallScreen$1;->this$0:Lcom/mediatek/phone/vt/VTInCallScreen;

    const-string v3, "- handler : (VT_ERROR_MEDIA_SERVER_DIED) - ForegroundCall exists, so hangup it ! "

    #calls: Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/mediatek/phone/vt/VTInCallScreen;->access$000(Lcom/mediatek/phone/vt/VTInCallScreen;Ljava/lang/String;)V

    .line 415
    :try_start_2
    iget-object v2, p0, Lcom/mediatek/phone/vt/VTInCallScreen$1;->this$0:Lcom/mediatek/phone/vt/VTInCallScreen;

    #getter for: Lcom/mediatek/phone/vt/VTInCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v2}, Lcom/mediatek/phone/vt/VTInCallScreen;->access$400(Lcom/mediatek/phone/vt/VTInCallScreen;)Lcom/android/internal/telephony/CallManager;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/phone/vt/VTInCallScreen$1;->this$0:Lcom/mediatek/phone/vt/VTInCallScreen;

    #getter for: Lcom/mediatek/phone/vt/VTInCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v3}, Lcom/mediatek/phone/vt/VTInCallScreen;->access$400(Lcom/mediatek/phone/vt/VTInCallScreen;)Lcom/android/internal/telephony/CallManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/CallManager;->hangupActiveCall(Lcom/android/internal/telephony/Call;)V
    :try_end_2
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    .line 416
    :catch_2
    move-exception v0

    .line 418
    .restart local v0       #e:Lcom/android/internal/telephony/CallStateException;
    iget-object v2, p0, Lcom/mediatek/phone/vt/VTInCallScreen$1;->this$0:Lcom/mediatek/phone/vt/VTInCallScreen;

    const-string v3, "- handler : (VT_ERROR_MEDIA_SERVER_DIED) - CallStateException ! "

    #calls: Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/mediatek/phone/vt/VTInCallScreen;->access$000(Lcom/mediatek/phone/vt/VTInCallScreen;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 427
    .end local v0           #e:Lcom/android/internal/telephony/CallStateException;
    :sswitch_e
    iget-object v2, p0, Lcom/mediatek/phone/vt/VTInCallScreen$1;->this$0:Lcom/mediatek/phone/vt/VTInCallScreen;

    const-string v3, "- handler : VT_MSG_RECEIVE_FIRSTFRAME ! "

    #calls: Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/mediatek/phone/vt/VTInCallScreen;->access$000(Lcom/mediatek/phone/vt/VTInCallScreen;Ljava/lang/String;)V

    .line 429
    iget-object v2, p0, Lcom/mediatek/phone/vt/VTInCallScreen$1;->this$0:Lcom/mediatek/phone/vt/VTInCallScreen;

    #calls: Lcom/mediatek/phone/vt/VTInCallScreen;->onVTReceiveFirstFrame()V
    invoke-static {v2}, Lcom/mediatek/phone/vt/VTInCallScreen;->access$600(Lcom/mediatek/phone/vt/VTInCallScreen;)V

    .line 430
    iget-object v2, p0, Lcom/mediatek/phone/vt/VTInCallScreen$1;->this$0:Lcom/mediatek/phone/vt/VTInCallScreen;

    iget-object v3, p0, Lcom/mediatek/phone/vt/VTInCallScreen$1;->this$0:Lcom/mediatek/phone/vt/VTInCallScreen;

    invoke-virtual {v3}, Lcom/mediatek/phone/vt/VTInCallScreen;->getVTScreenMode()Lcom/android/phone/Constants$VTScreenMode;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/mediatek/phone/vt/VTInCallScreen;->updateVTScreen(Lcom/android/phone/Constants$VTScreenMode;)V

    goto/16 :goto_0

    .line 434
    :sswitch_f
    const/16 v2, 0x7fff

    iget v3, p1, Landroid/os/Message;->arg1:I

    if-ne v2, v3, :cond_8

    .line 435
    iget-object v2, p0, Lcom/mediatek/phone/vt/VTInCallScreen$1;->this$0:Lcom/mediatek/phone/vt/VTInCallScreen;

    iget-object v3, p0, Lcom/mediatek/phone/vt/VTInCallScreen$1;->this$0:Lcom/mediatek/phone/vt/VTInCallScreen;

    invoke-virtual {v3}, Lcom/mediatek/phone/vt/VTInCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d006d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/mediatek/phone/vt/VTInCallScreen;->showToast(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/mediatek/phone/vt/VTInCallScreen;->access$300(Lcom/mediatek/phone/vt/VTInCallScreen;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 436
    :cond_8
    const/16 v2, 0x321

    iget v3, p1, Landroid/os/Message;->arg1:I

    if-ne v2, v3, :cond_0

    .line 437
    iget-object v2, p0, Lcom/mediatek/phone/vt/VTInCallScreen$1;->this$0:Lcom/mediatek/phone/vt/VTInCallScreen;

    invoke-virtual {v2}, Lcom/mediatek/phone/vt/VTInCallScreen;->stopRecord()V

    .line 438
    iget-object v2, p0, Lcom/mediatek/phone/vt/VTInCallScreen$1;->this$0:Lcom/mediatek/phone/vt/VTInCallScreen;

    #getter for: Lcom/mediatek/phone/vt/VTInCallScreen;->mInCallScreen:Lcom/android/phone/InCallScreen;
    invoke-static {v2}, Lcom/mediatek/phone/vt/VTInCallScreen;->access$500(Lcom/mediatek/phone/vt/VTInCallScreen;)Lcom/android/phone/InCallScreen;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/android/phone/InCallScreen;->handleStorageFull(Z)V

    goto/16 :goto_0

    .line 443
    :sswitch_10
    iget v2, p1, Landroid/os/Message;->arg1:I

    if-ne v5, v2, :cond_0

    .line 444
    iget-object v2, p0, Lcom/mediatek/phone/vt/VTInCallScreen$1;->this$0:Lcom/mediatek/phone/vt/VTInCallScreen;

    iget-object v3, p0, Lcom/mediatek/phone/vt/VTInCallScreen$1;->this$0:Lcom/mediatek/phone/vt/VTInCallScreen;

    invoke-virtual {v3}, Lcom/mediatek/phone/vt/VTInCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d0072

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/mediatek/phone/vt/VTInCallScreen;->showToast(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/mediatek/phone/vt/VTInCallScreen;->access$300(Lcom/mediatek/phone/vt/VTInCallScreen;Ljava/lang/String;)V

    .line 445
    iget-object v2, p0, Lcom/mediatek/phone/vt/VTInCallScreen$1;->this$0:Lcom/mediatek/phone/vt/VTInCallScreen;

    invoke-virtual {v2}, Lcom/mediatek/phone/vt/VTInCallScreen;->stopRecord()V

    goto/16 :goto_0

    .line 450
    :sswitch_11
    const/4 v1, 0x0

    .line 451
    .local v1, ok:I
    iget v2, p1, Landroid/os/Message;->arg1:I

    if-ne v1, v2, :cond_9

    .line 453
    iget-object v2, p0, Lcom/mediatek/phone/vt/VTInCallScreen$1;->this$0:Lcom/mediatek/phone/vt/VTInCallScreen;

    const-string v3, "- handler : VT_ERROR_MEDIA_RECORDER_COMPLETE, arg is OK "

    #calls: Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/mediatek/phone/vt/VTInCallScreen;->access$000(Lcom/mediatek/phone/vt/VTInCallScreen;Ljava/lang/String;)V

    .line 455
    iget-object v2, p0, Lcom/mediatek/phone/vt/VTInCallScreen$1;->this$0:Lcom/mediatek/phone/vt/VTInCallScreen;

    iget-object v3, p0, Lcom/mediatek/phone/vt/VTInCallScreen$1;->this$0:Lcom/mediatek/phone/vt/VTInCallScreen;

    invoke-virtual {v3}, Lcom/mediatek/phone/vt/VTInCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d006f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/mediatek/phone/vt/VTInCallScreen;->showToast(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/mediatek/phone/vt/VTInCallScreen;->access$300(Lcom/mediatek/phone/vt/VTInCallScreen;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 458
    :cond_9
    iget-object v2, p0, Lcom/mediatek/phone/vt/VTInCallScreen$1;->this$0:Lcom/mediatek/phone/vt/VTInCallScreen;

    const-string v3, "- handler : VT_ERROR_MEDIA_RECORDER_COMPLETE, arg is not OK "

    #calls: Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/mediatek/phone/vt/VTInCallScreen;->access$000(Lcom/mediatek/phone/vt/VTInCallScreen;Ljava/lang/String;)V

    .line 460
    iget-object v2, p0, Lcom/mediatek/phone/vt/VTInCallScreen$1;->this$0:Lcom/mediatek/phone/vt/VTInCallScreen;

    iget-object v3, p0, Lcom/mediatek/phone/vt/VTInCallScreen$1;->this$0:Lcom/mediatek/phone/vt/VTInCallScreen;

    invoke-virtual {v3}, Lcom/mediatek/phone/vt/VTInCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d0071

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/mediatek/phone/vt/VTInCallScreen;->showToast(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/mediatek/phone/vt/VTInCallScreen;->access$300(Lcom/mediatek/phone/vt/VTInCallScreen;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 466
    .end local v1           #ok:I
    :sswitch_12
    iget-object v2, p0, Lcom/mediatek/phone/vt/VTInCallScreen$1;->this$0:Lcom/mediatek/phone/vt/VTInCallScreen;

    const-string v3, "- handler : VT_MSG_PEER_CAMERA_OPEN ! "

    #calls: Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/mediatek/phone/vt/VTInCallScreen;->access$000(Lcom/mediatek/phone/vt/VTInCallScreen;Ljava/lang/String;)V

    .line 468
    iget-object v2, p0, Lcom/mediatek/phone/vt/VTInCallScreen$1;->this$0:Lcom/mediatek/phone/vt/VTInCallScreen;

    iget-object v3, p0, Lcom/mediatek/phone/vt/VTInCallScreen$1;->this$0:Lcom/mediatek/phone/vt/VTInCallScreen;

    invoke-virtual {v3}, Lcom/mediatek/phone/vt/VTInCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d0069

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/mediatek/phone/vt/VTInCallScreen;->showToast(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/mediatek/phone/vt/VTInCallScreen;->access$300(Lcom/mediatek/phone/vt/VTInCallScreen;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 473
    :sswitch_13
    iget-object v2, p0, Lcom/mediatek/phone/vt/VTInCallScreen$1;->this$0:Lcom/mediatek/phone/vt/VTInCallScreen;

    const-string v3, "- handler : VT_MSG_PEER_CAMERA_CLOSE ! "

    #calls: Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/mediatek/phone/vt/VTInCallScreen;->access$000(Lcom/mediatek/phone/vt/VTInCallScreen;Ljava/lang/String;)V

    .line 475
    iget-object v2, p0, Lcom/mediatek/phone/vt/VTInCallScreen$1;->this$0:Lcom/mediatek/phone/vt/VTInCallScreen;

    iget-object v3, p0, Lcom/mediatek/phone/vt/VTInCallScreen$1;->this$0:Lcom/mediatek/phone/vt/VTInCallScreen;

    invoke-virtual {v3}, Lcom/mediatek/phone/vt/VTInCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d006a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/mediatek/phone/vt/VTInCallScreen;->showToast(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/mediatek/phone/vt/VTInCallScreen;->access$300(Lcom/mediatek/phone/vt/VTInCallScreen;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 242
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_4
        0x2 -> :sswitch_3
        0x3 -> :sswitch_5
        0x4 -> :sswitch_1
        0x5 -> :sswitch_0
        0x6 -> :sswitch_6
        0x7 -> :sswitch_2
        0x8 -> :sswitch_e
        0x9 -> :sswitch_12
        0x10 -> :sswitch_13
        0x7e -> :sswitch_7
        0x7f -> :sswitch_8
        0x8001 -> :sswitch_9
        0x8002 -> :sswitch_b
        0x8003 -> :sswitch_c
        0x8004 -> :sswitch_d
        0x8005 -> :sswitch_f
        0x8006 -> :sswitch_10
        0x8007 -> :sswitch_11
        0x8101 -> :sswitch_a
    .end sparse-switch
.end method
