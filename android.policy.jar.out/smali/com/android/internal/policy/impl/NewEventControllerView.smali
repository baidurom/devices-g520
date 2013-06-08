.class public Lcom/android/internal/policy/impl/NewEventControllerView;
.super Landroid/widget/LinearLayout;
.source "NewEventControllerView.java"

# interfaces
.implements Lcom/mediatek/common/policy/INewEventController;
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/NewEventControllerView$NewEventInfo;,
        Lcom/android/internal/policy/impl/NewEventControllerView$UpdateNeweventTask;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field private static final MISSCALL_SETTING_VALE:Ljava/lang/String; = "com_android_contacts_mtk_unread"

.field private static final MMS_SETTING_VALE:Ljava/lang/String; = "com_android_mms_mtk_unread"

.field private static final TAG:Ljava/lang/String; = "NewEventController"

.field private static final UPDATE_NEWEVENT:I = 0x3e9

.field private static final UPDATE_TASK:I = 0x3e8

.field private static mMissCallNewEventCount:I

.field private static mMmsNewEventCount:I


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mMissCallNewEventView:Lcom/android/internal/policy/impl/NewEventView;

.field private mMmsNewEventView:Lcom/android/internal/policy/impl/NewEventView;

.field private mUpdateEnabled:Z

.field private mUpdateNeweventTask:Lcom/android/internal/policy/impl/NewEventControllerView$UpdateNeweventTask;

.field private mUpdateScheduled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 73
    sput v0, Lcom/android/internal/policy/impl/NewEventControllerView;->mMmsNewEventCount:I

    .line 74
    sput v0, Lcom/android/internal/policy/impl/NewEventControllerView;->mMissCallNewEventCount:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 81
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/policy/impl/NewEventControllerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 82
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 85
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 86
    const-string v0, "NewEventController"

    const-string v1, "Enter constructor"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    iput-object p1, p0, Lcom/android/internal/policy/impl/NewEventControllerView;->mContext:Landroid/content/Context;

    .line 88
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/NewEventControllerView;->mHandler:Landroid/os/Handler;

    .line 90
    return-void
.end method

.method static synthetic access$002(Lcom/android/internal/policy/impl/NewEventControllerView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/NewEventControllerView;->mUpdateScheduled:Z

    return p1
.end method

.method private getMessageName(Landroid/os/Message;)Ljava/lang/String;
    .locals 1
    .parameter "message"

    .prologue
    .line 132
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 138
    const-string v0, ""

    :goto_0
    return-object v0

    .line 134
    :pswitch_0
    const-string v0, "UPDATE_TASK"

    goto :goto_0

    .line 136
    :pswitch_1
    const-string v0, "UPDATE_NEWEVENT"

    goto :goto_0

    .line 132
    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private scheduleUpdateNewEvent()V
    .locals 2

    .prologue
    .line 201
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/NewEventControllerView;->mUpdateScheduled:Z

    if-nez v0, :cond_0

    .line 202
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/NewEventControllerView;->mUpdateScheduled:Z

    .line 203
    iget-object v0, p0, Lcom/android/internal/policy/impl/NewEventControllerView;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 205
    :cond_0
    return-void
.end method

.method private unScheduleUpdateNewEvent()V
    .locals 2

    .prologue
    .line 208
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/NewEventControllerView;->mUpdateScheduled:Z

    if-eqz v0, :cond_0

    .line 209
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/NewEventControllerView;->mUpdateScheduled:Z

    .line 210
    iget-object v0, p0, Lcom/android/internal/policy/impl/NewEventControllerView;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 212
    :cond_0
    return-void
.end method

.method private updateNewEventInternal()V
    .locals 2

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/internal/policy/impl/NewEventControllerView;->mMmsNewEventView:Lcom/android/internal/policy/impl/NewEventView;

    sget v1, Lcom/android/internal/policy/impl/NewEventControllerView;->mMmsNewEventCount:I

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/NewEventView;->setNumber(I)V

    .line 128
    iget-object v0, p0, Lcom/android/internal/policy/impl/NewEventControllerView;->mMissCallNewEventView:Lcom/android/internal/policy/impl/NewEventView;

    sget v1, Lcom/android/internal/policy/impl/NewEventControllerView;->mMissCallNewEventCount:I

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/NewEventView;->setNumber(I)V

    .line 129
    return-void
.end method


# virtual methods
.method public cancelUpdateNewEvent()V
    .locals 0

    .prologue
    .line 197
    invoke-direct {p0}, Lcom/android/internal/policy/impl/NewEventControllerView;->unScheduleUpdateNewEvent()V

    .line 198
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 6
    .parameter "msg"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 143
    const-string v3, "NewEventController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " handleMessage "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/NewEventControllerView;->getMessageName(Landroid/os/Message;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    move v1, v2

    .line 169
    :goto_0
    return v1

    .line 146
    :pswitch_0
    iget-object v3, p0, Lcom/android/internal/policy/impl/NewEventControllerView;->mUpdateNeweventTask:Lcom/android/internal/policy/impl/NewEventControllerView$UpdateNeweventTask;

    if-eqz v3, :cond_0

    .line 147
    iget-object v3, p0, Lcom/android/internal/policy/impl/NewEventControllerView;->mUpdateNeweventTask:Lcom/android/internal/policy/impl/NewEventControllerView$UpdateNeweventTask;

    invoke-virtual {v3, v1}, Lcom/android/internal/policy/impl/NewEventControllerView$UpdateNeweventTask;->cancel(Z)Z

    .line 149
    :cond_0
    new-instance v3, Lcom/android/internal/policy/impl/NewEventControllerView$UpdateNeweventTask;

    iget-object v4, p0, Lcom/android/internal/policy/impl/NewEventControllerView;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/internal/policy/impl/NewEventControllerView;->mHandler:Landroid/os/Handler;

    invoke-direct {v3, p0, v4, v5}, Lcom/android/internal/policy/impl/NewEventControllerView$UpdateNeweventTask;-><init>(Lcom/android/internal/policy/impl/NewEventControllerView;Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v3, p0, Lcom/android/internal/policy/impl/NewEventControllerView;->mUpdateNeweventTask:Lcom/android/internal/policy/impl/NewEventControllerView$UpdateNeweventTask;

    .line 150
    iget-object v3, p0, Lcom/android/internal/policy/impl/NewEventControllerView;->mUpdateNeweventTask:Lcom/android/internal/policy/impl/NewEventControllerView$UpdateNeweventTask;

    new-array v2, v2, [Landroid/content/ContentValues;

    invoke-virtual {v3, v2}, Lcom/android/internal/policy/impl/NewEventControllerView$UpdateNeweventTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 154
    :pswitch_1
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/internal/policy/impl/NewEventControllerView;->mUpdateNeweventTask:Lcom/android/internal/policy/impl/NewEventControllerView$UpdateNeweventTask;

    .line 155
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/policy/impl/NewEventControllerView$NewEventInfo;

    .line 157
    .local v0, newEventInfo:Lcom/android/internal/policy/impl/NewEventControllerView$NewEventInfo;
    const-string v3, "NewEventController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " handleMessage UPDATE_NEWEVENT"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " newEventInfo: mmsCount="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v0, Lcom/android/internal/policy/impl/NewEventControllerView$NewEventInfo;->mmsCount:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " misscallCount="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v0, Lcom/android/internal/policy/impl/NewEventControllerView$NewEventInfo;->misscallCount:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    iget v3, v0, Lcom/android/internal/policy/impl/NewEventControllerView$NewEventInfo;->mmsCount:I

    sput v3, Lcom/android/internal/policy/impl/NewEventControllerView;->mMmsNewEventCount:I

    .line 162
    iget v3, v0, Lcom/android/internal/policy/impl/NewEventControllerView$NewEventInfo;->misscallCount:I

    sput v3, Lcom/android/internal/policy/impl/NewEventControllerView;->mMissCallNewEventCount:I

    .line 163
    sget v3, Lcom/android/internal/policy/impl/NewEventControllerView;->mMmsNewEventCount:I

    sget v4, Lcom/android/internal/policy/impl/NewEventControllerView;->mMissCallNewEventCount:I

    add-int/2addr v3, v4

    if-lez v3, :cond_1

    .line 164
    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/NewEventControllerView;->setVisibility(I)V

    .line 166
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/policy/impl/NewEventControllerView;->updateNewEventInternal()V

    goto :goto_0

    .line 144
    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onAttachedToWindow()V
    .locals 2

    .prologue
    .line 108
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 109
    const-string v0, "NewEventController"

    const-string v1, "onAttachedToWindow"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    iget-object v0, p0, Lcom/android/internal/policy/impl/NewEventControllerView;->mMmsNewEventView:Lcom/android/internal/policy/impl/NewEventView;

    const-string v1, "com_android_mms_mtk_unread"

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/NewEventView;->registerUpdateListener(Ljava/lang/String;)V

    .line 112
    iget-object v0, p0, Lcom/android/internal/policy/impl/NewEventControllerView;->mMissCallNewEventView:Lcom/android/internal/policy/impl/NewEventView;

    const-string v1, "com_android_contacts_mtk_unread"

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/NewEventView;->registerUpdateListener(Ljava/lang/String;)V

    .line 114
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 118
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 119
    const-string v0, "NewEventController"

    const-string v1, "onDetachedFromWindow"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    iget-object v0, p0, Lcom/android/internal/policy/impl/NewEventControllerView;->mMmsNewEventView:Lcom/android/internal/policy/impl/NewEventView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/NewEventView;->unRegisterUpdateListener()V

    .line 122
    iget-object v0, p0, Lcom/android/internal/policy/impl/NewEventControllerView;->mMissCallNewEventView:Lcom/android/internal/policy/impl/NewEventView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/NewEventView;->unRegisterUpdateListener()V

    .line 124
    return-void
.end method

.method public onFinishInflate()V
    .locals 2

    .prologue
    .line 94
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 95
    const-string v0, "NewEventController"

    const-string v1, "onFinishInflate"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    const v0, 0x1020295

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/NewEventControllerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/impl/NewEventView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/NewEventControllerView;->mMmsNewEventView:Lcom/android/internal/policy/impl/NewEventView;

    .line 97
    const v0, 0x1020296

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/NewEventControllerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/impl/NewEventView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/NewEventControllerView;->mMissCallNewEventView:Lcom/android/internal/policy/impl/NewEventView;

    .line 99
    iget-object v0, p0, Lcom/android/internal/policy/impl/NewEventControllerView;->mMmsNewEventView:Lcom/android/internal/policy/impl/NewEventView;

    const v1, 0x2020065

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/NewEventView;->Init(I)V

    .line 100
    iget-object v0, p0, Lcom/android/internal/policy/impl/NewEventControllerView;->mMissCallNewEventView:Lcom/android/internal/policy/impl/NewEventView;

    const v1, 0x2020064

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/NewEventView;->Init(I)V

    .line 102
    iget-object v0, p0, Lcom/android/internal/policy/impl/NewEventControllerView;->mMmsNewEventView:Lcom/android/internal/policy/impl/NewEventView;

    invoke-virtual {v0, p0}, Lcom/android/internal/policy/impl/NewEventView;->setController(Lcom/android/internal/policy/impl/NewEventControllerView;)V

    .line 103
    iget-object v0, p0, Lcom/android/internal/policy/impl/NewEventControllerView;->mMissCallNewEventView:Lcom/android/internal/policy/impl/NewEventView;

    invoke-virtual {v0, p0}, Lcom/android/internal/policy/impl/NewEventView;->setController(Lcom/android/internal/policy/impl/NewEventControllerView;)V

    .line 104
    return-void
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 180
    invoke-direct {p0}, Lcom/android/internal/policy/impl/NewEventControllerView;->unScheduleUpdateNewEvent()V

    .line 181
    iget-object v0, p0, Lcom/android/internal/policy/impl/NewEventControllerView;->mUpdateNeweventTask:Lcom/android/internal/policy/impl/NewEventControllerView$UpdateNeweventTask;

    if-eqz v0, :cond_0

    .line 182
    iget-object v0, p0, Lcom/android/internal/policy/impl/NewEventControllerView;->mUpdateNeweventTask:Lcom/android/internal/policy/impl/NewEventControllerView$UpdateNeweventTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/NewEventControllerView$UpdateNeweventTask;->cancel(Z)Z

    .line 183
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/NewEventControllerView;->mUpdateNeweventTask:Lcom/android/internal/policy/impl/NewEventControllerView$UpdateNeweventTask;

    .line 185
    :cond_0
    return-void
.end method

.method public setUpdateEnabled(Z)V
    .locals 3
    .parameter "updateEnabled"

    .prologue
    .line 192
    const-string v0, "NewEventController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setUpdateEnabled updateEnabled = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/NewEventControllerView;->mUpdateEnabled:Z

    .line 194
    return-void
.end method

.method public setViewVisibility(I)V
    .locals 0
    .parameter "visibility"

    .prologue
    .line 188
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/NewEventControllerView;->setVisibility(I)V

    .line 189
    return-void
.end method

.method public updateNewEvent()V
    .locals 3

    .prologue
    .line 173
    const-string v0, "NewEventController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " updateNewEvent mUpdateEnabled = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/NewEventControllerView;->mUpdateEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/NewEventControllerView;->mUpdateEnabled:Z

    if-eqz v0, :cond_0

    .line 175
    invoke-direct {p0}, Lcom/android/internal/policy/impl/NewEventControllerView;->scheduleUpdateNewEvent()V

    .line 177
    :cond_0
    return-void
.end method
