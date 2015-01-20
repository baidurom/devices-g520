.class Lcom/android/internal/policy/impl/NewEventControllerView$UpdateNeweventTask;
.super Landroid/os/AsyncTask;
.source "NewEventControllerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/NewEventControllerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UpdateNeweventTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Landroid/content/ContentValues;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field mContext:Landroid/content/Context;

.field mHandler:Landroid/os/Handler;

.field mMisscallCount:I

.field mMmsCount:I

.field final synthetic this$0:Lcom/android/internal/policy/impl/NewEventControllerView;


# direct methods
.method public constructor <init>(Lcom/android/internal/policy/impl/NewEventControllerView;Landroid/content/Context;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "context"
    .parameter "handler"

    .prologue
    .line 220
    iput-object p1, p0, Lcom/android/internal/policy/impl/NewEventControllerView$UpdateNeweventTask;->this$0:Lcom/android/internal/policy/impl/NewEventControllerView;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 221
    iput-object p2, p0, Lcom/android/internal/policy/impl/NewEventControllerView$UpdateNeweventTask;->mContext:Landroid/content/Context;

    .line 222
    iput-object p3, p0, Lcom/android/internal/policy/impl/NewEventControllerView$UpdateNeweventTask;->mHandler:Landroid/os/Handler;

    .line 223
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 214
    check-cast p1, [Landroid/content/ContentValues;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/NewEventControllerView$UpdateNeweventTask;->doInBackground([Landroid/content/ContentValues;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Landroid/content/ContentValues;)Ljava/lang/Void;
    .locals 3
    .parameter "params"

    .prologue
    const/4 v2, 0x0

    .line 232
    iget-object v0, p0, Lcom/android/internal/policy/impl/NewEventControllerView$UpdateNeweventTask;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "com_android_mms_mtk_unread"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/NewEventControllerView$UpdateNeweventTask;->mMmsCount:I

    .line 233
    iget-object v0, p0, Lcom/android/internal/policy/impl/NewEventControllerView$UpdateNeweventTask;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "com_android_contacts_mtk_unread"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/NewEventControllerView$UpdateNeweventTask;->mMisscallCount:I

    .line 234
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 214
    check-cast p1, Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/NewEventControllerView$UpdateNeweventTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 4
    .parameter "o"

    .prologue
    .line 239
    iget-object v2, p0, Lcom/android/internal/policy/impl/NewEventControllerView$UpdateNeweventTask;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x3e9

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 240
    .local v0, msg:Landroid/os/Message;
    new-instance v1, Lcom/android/internal/policy/impl/NewEventControllerView$NewEventInfo;

    iget-object v2, p0, Lcom/android/internal/policy/impl/NewEventControllerView$UpdateNeweventTask;->this$0:Lcom/android/internal/policy/impl/NewEventControllerView;

    invoke-direct {v1, v2}, Lcom/android/internal/policy/impl/NewEventControllerView$NewEventInfo;-><init>(Lcom/android/internal/policy/impl/NewEventControllerView;)V

    .line 241
    .local v1, newEventInfo:Lcom/android/internal/policy/impl/NewEventControllerView$NewEventInfo;
    iget v2, p0, Lcom/android/internal/policy/impl/NewEventControllerView$UpdateNeweventTask;->mMmsCount:I

    iput v2, v1, Lcom/android/internal/policy/impl/NewEventControllerView$NewEventInfo;->mmsCount:I

    .line 242
    iget v2, p0, Lcom/android/internal/policy/impl/NewEventControllerView$UpdateNeweventTask;->mMisscallCount:I

    iput v2, v1, Lcom/android/internal/policy/impl/NewEventControllerView$NewEventInfo;->misscallCount:I

    .line 243
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 244
    iget-object v2, p0, Lcom/android/internal/policy/impl/NewEventControllerView$UpdateNeweventTask;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 245
    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 227
    iget-object v0, p0, Lcom/android/internal/policy/impl/NewEventControllerView$UpdateNeweventTask;->this$0:Lcom/android/internal/policy/impl/NewEventControllerView;

    const/4 v1, 0x0

    #setter for: Lcom/android/internal/policy/impl/NewEventControllerView;->mUpdateScheduled:Z
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/NewEventControllerView;->access$002(Lcom/android/internal/policy/impl/NewEventControllerView;Z)Z

    .line 228
    return-void
.end method
