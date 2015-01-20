.class public Lcom/android/camera/manager/RecordingView;
.super Lcom/android/camera/manager/ViewManager;
.source "RecordingView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
#the value of this static final field might be set in the static constructor
.field private static final LOG:Z = false

.field private static final TAG:Ljava/lang/String; = "RecordingView"


# instance fields
.field private mListener:Landroid/view/View$OnClickListener;

.field private mPauseResume:Landroid/widget/ImageView;

.field private mRecordingView:Landroid/widget/TextView;

.field private mRecordinging:Z

.field private mTimeText:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    sget-boolean v0, Lcom/android/camera/Log;->LOGV:Z

    sput-boolean v0, Lcom/android/camera/manager/RecordingView;->LOG:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/Camera;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/android/camera/manager/ViewManager;-><init>(Lcom/android/camera/Camera;)V

    .line 24
    return-void
.end method

.method private formatTime(JZ)Ljava/lang/String;
    .locals 10
    .parameter "millis"
    .parameter "showMillis"

    .prologue
    .line 83
    long-to-int v6, p1

    div-int/lit16 v5, v6, 0x3e8

    .line 84
    .local v5, totalSeconds:I
    const-wide/16 v6, 0x3e8

    rem-long v6, p1, v6

    long-to-int v6, v6

    div-int/lit8 v1, v6, 0xa

    .line 85
    .local v1, millionSeconds:I
    rem-int/lit8 v3, v5, 0x3c

    .line 86
    .local v3, seconds:I
    div-int/lit8 v6, v5, 0x3c

    rem-int/lit8 v2, v6, 0x3c

    .line 87
    .local v2, minutes:I
    div-int/lit16 v0, v5, 0xe10

    .line 88
    .local v0, hours:I
    const/4 v4, 0x0

    .line 89
    .local v4, text:Ljava/lang/String;
    if-eqz p3, :cond_2

    .line 90
    if-lez v0, :cond_1

    .line 91
    const-string v6, "%d:%02d:%02d.%02d"

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 102
    :goto_0
    sget-boolean v6, Lcom/android/camera/manager/RecordingView;->LOG:Z

    if-eqz v6, :cond_0

    .line 103
    const-string v6, "RecordingView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "formatTime("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ") return "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    :cond_0
    return-object v4

    .line 93
    :cond_1
    const-string v6, "%02d:%02d.%02d"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 96
    :cond_2
    if-lez v0, :cond_3

    .line 97
    const-string v6, "%d:%02d:%02d"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 99
    :cond_3
    const-string v6, "%02d:%02d"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_0
.end method


# virtual methods
.method public getRecording()Z
    .locals 1

    .prologue
    .line 72
    iget-boolean v0, p0, Lcom/android/camera/manager/RecordingView;->mRecordinging:Z

    return v0
.end method

.method protected getView()Landroid/view/View;
    .locals 2

    .prologue
    .line 28
    const v1, 0x7f040045

    invoke-virtual {p0, v1}, Lcom/android/camera/manager/ViewManager;->inflate(I)Landroid/view/View;

    move-result-object v0

    .line 29
    .local v0, view:Landroid/view/View;
    const v1, 0x7f0b00cb

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/camera/manager/RecordingView;->mRecordingView:Landroid/widget/TextView;

    .line 30
    const v1, 0x7f0b00cc

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/camera/manager/RecordingView;->mPauseResume:Landroid/widget/ImageView;

    .line 31
    iget-object v1, p0, Lcom/android/camera/manager/RecordingView;->mPauseResume:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 32
    return-object v0
.end method

.method public hideTimeView(Z)V
    .locals 2
    .parameter "visible"

    .prologue
    .line 109
    if-eqz p1, :cond_0

    .line 110
    iget-object v0, p0, Lcom/android/camera/manager/RecordingView;->mRecordingView:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 114
    :goto_0
    return-void

    .line 112
    :cond_0
    iget-object v0, p0, Lcom/android/camera/manager/RecordingView;->mRecordingView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/camera/manager/RecordingView;->mListener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/manager/RecordingView;->mPauseResume:Landroid/widget/ImageView;

    if-ne v0, p1, :cond_0

    .line 55
    iget-object v0, p0, Lcom/android/camera/manager/RecordingView;->mListener:Landroid/view/View$OnClickListener;

    iget-object v1, p0, Lcom/android/camera/manager/RecordingView;->mPauseResume:Landroid/widget/ImageView;

    invoke-interface {v0, v1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 57
    :cond_0
    return-void
.end method

.method protected onRefresh()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 37
    const v1, 0x7f0200bf

    .line 38
    .local v1, recordingId:I
    const v0, 0x7f0200c2

    .line 39
    .local v0, playpauseid:I
    iget-boolean v2, p0, Lcom/android/camera/manager/RecordingView;->mRecordinging:Z

    if-eqz v2, :cond_0

    .line 40
    const v1, 0x7f0200c0

    .line 41
    const v0, 0x7f0200c1

    .line 43
    :cond_0
    iget-object v2, p0, Lcom/android/camera/manager/RecordingView;->mPauseResume:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 44
    iget-object v2, p0, Lcom/android/camera/manager/RecordingView;->mRecordingView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/camera/manager/ViewManager;->getContext()Lcom/android/camera/Camera;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3, v4, v4, v4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 49
    iget-object v2, p0, Lcom/android/camera/manager/RecordingView;->mRecordingView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/camera/manager/RecordingView;->mTimeText:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 50
    return-void
.end method

.method public setListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 60
    iput-object p1, p0, Lcom/android/camera/manager/RecordingView;->mListener:Landroid/view/View$OnClickListener;

    .line 61
    return-void
.end method

.method public showRecording(Z)V
    .locals 3
    .parameter "recording"

    .prologue
    .line 64
    sget-boolean v0, Lcom/android/camera/manager/RecordingView;->LOG:Z

    if-eqz v0, :cond_0

    .line 65
    const-string v0, "RecordingView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showRecording("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    :cond_0
    iput-boolean p1, p0, Lcom/android/camera/manager/RecordingView;->mRecordinging:Z

    .line 68
    invoke-virtual {p0}, Lcom/android/camera/manager/ViewManager;->show()V

    .line 69
    return-void
.end method

.method public showTime(JZ)V
    .locals 2
    .parameter "millis"
    .parameter "showMillis"

    .prologue
    .line 76
    invoke-direct {p0, p1, p2, p3}, Lcom/android/camera/manager/RecordingView;->formatTime(JZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/manager/RecordingView;->mTimeText:Ljava/lang/String;

    .line 77
    iget-object v0, p0, Lcom/android/camera/manager/RecordingView;->mRecordingView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/android/camera/manager/RecordingView;->mRecordingView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/camera/manager/RecordingView;->mTimeText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    :cond_0
    return-void
.end method
