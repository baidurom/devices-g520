.class Lcom/mediatek/gallery3d/video/MTKVideoView$3;
.super Ljava/lang/Object;
.source "MTKVideoView.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/gallery3d/video/MTKVideoView;->initialize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/gallery3d/video/MTKVideoView;


# direct methods
.method constructor <init>(Lcom/mediatek/gallery3d/video/MTKVideoView;)V
    .locals 0
    .parameter

    .prologue
    .line 168
    iput-object p1, p0, Lcom/mediatek/gallery3d/video/MTKVideoView$3;->this$0:Lcom/mediatek/gallery3d/video/MTKVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 11
    .parameter "mp"
    .parameter "frameworkErr"
    .parameter "implErr"

    .prologue
    const/4 v10, 0x1

    const/4 v9, -0x1

    .line 170
    const-string v6, "MTKVideoView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/gallery3d/ui/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    iget-object v6, p0, Lcom/mediatek/gallery3d/video/MTKVideoView$3;->this$0:Lcom/mediatek/gallery3d/video/MTKVideoView;

    #getter for: Landroid/widget/VideoView;->mCurrentState:I
    invoke-static {v6}, Lcom/mediatek/gallery3d/video/MTKVideoView;->access$1300(Lcom/mediatek/gallery3d/video/MTKVideoView;)I

    move-result v6

    if-ne v6, v9, :cond_1

    .line 172
    const-string v6, "MTKVideoView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Duplicate error message. error message has been sent! error=("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/gallery3d/ui/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    :cond_0
    :goto_0
    return v10

    .line 178
    :cond_1
    iget-object v6, p0, Lcom/mediatek/gallery3d/video/MTKVideoView$3;->this$0:Lcom/mediatek/gallery3d/video/MTKVideoView;

    iget-object v7, p0, Lcom/mediatek/gallery3d/video/MTKVideoView$3;->this$0:Lcom/mediatek/gallery3d/video/MTKVideoView;

    invoke-virtual {v7}, Lcom/mediatek/gallery3d/video/MTKVideoView;->getCurrentPosition()I

    move-result v7

    #setter for: Landroid/widget/VideoView;->mSeekWhenPrepared:I
    invoke-static {v6, v7}, Lcom/mediatek/gallery3d/video/MTKVideoView;->access$1402(Lcom/mediatek/gallery3d/video/MTKVideoView;I)I

    .line 180
    const-string v6, "MTKVideoView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onError() mSeekWhenPrepared="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/mediatek/gallery3d/video/MTKVideoView$3;->this$0:Lcom/mediatek/gallery3d/video/MTKVideoView;

    #getter for: Landroid/widget/VideoView;->mSeekWhenPrepared:I
    invoke-static {v8}, Lcom/mediatek/gallery3d/video/MTKVideoView;->access$1500(Lcom/mediatek/gallery3d/video/MTKVideoView;)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", mDuration="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/mediatek/gallery3d/video/MTKVideoView$3;->this$0:Lcom/mediatek/gallery3d/video/MTKVideoView;

    #getter for: Landroid/widget/VideoView;->mDuration:I
    invoke-static {v8}, Lcom/mediatek/gallery3d/video/MTKVideoView;->access$1600(Lcom/mediatek/gallery3d/video/MTKVideoView;)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/gallery3d/ui/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    iget-object v6, p0, Lcom/mediatek/gallery3d/video/MTKVideoView$3;->this$0:Lcom/mediatek/gallery3d/video/MTKVideoView;

    iget-object v7, p0, Lcom/mediatek/gallery3d/video/MTKVideoView$3;->this$0:Lcom/mediatek/gallery3d/video/MTKVideoView;

    #getter for: Landroid/widget/VideoView;->mDuration:I
    invoke-static {v7}, Lcom/mediatek/gallery3d/video/MTKVideoView;->access$1800(Lcom/mediatek/gallery3d/video/MTKVideoView;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    #setter for: Landroid/widget/VideoView;->mDuration:I
    invoke-static {v6, v7}, Lcom/mediatek/gallery3d/video/MTKVideoView;->access$1702(Lcom/mediatek/gallery3d/video/MTKVideoView;I)I

    .line 184
    iget-object v6, p0, Lcom/mediatek/gallery3d/video/MTKVideoView$3;->this$0:Lcom/mediatek/gallery3d/video/MTKVideoView;

    #setter for: Landroid/widget/VideoView;->mCurrentState:I
    invoke-static {v6, v9}, Lcom/mediatek/gallery3d/video/MTKVideoView;->access$1902(Lcom/mediatek/gallery3d/video/MTKVideoView;I)I

    .line 185
    iget-object v6, p0, Lcom/mediatek/gallery3d/video/MTKVideoView$3;->this$0:Lcom/mediatek/gallery3d/video/MTKVideoView;

    #setter for: Landroid/widget/VideoView;->mTargetState:I
    invoke-static {v6, v9}, Lcom/mediatek/gallery3d/video/MTKVideoView;->access$2002(Lcom/mediatek/gallery3d/video/MTKVideoView;I)I

    .line 186
    iget-object v6, p0, Lcom/mediatek/gallery3d/video/MTKVideoView$3;->this$0:Lcom/mediatek/gallery3d/video/MTKVideoView;

    #getter for: Landroid/widget/VideoView;->mMediaController:Landroid/widget/MediaController;
    invoke-static {v6}, Lcom/mediatek/gallery3d/video/MTKVideoView;->access$2100(Lcom/mediatek/gallery3d/video/MTKVideoView;)Landroid/widget/MediaController;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 187
    iget-object v6, p0, Lcom/mediatek/gallery3d/video/MTKVideoView$3;->this$0:Lcom/mediatek/gallery3d/video/MTKVideoView;

    #getter for: Landroid/widget/VideoView;->mMediaController:Landroid/widget/MediaController;
    invoke-static {v6}, Lcom/mediatek/gallery3d/video/MTKVideoView;->access$2200(Lcom/mediatek/gallery3d/video/MTKVideoView;)Landroid/widget/MediaController;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/MediaController;->hide()V

    .line 191
    :cond_2
    iget-object v6, p0, Lcom/mediatek/gallery3d/video/MTKVideoView$3;->this$0:Lcom/mediatek/gallery3d/video/MTKVideoView;

    #getter for: Landroid/widget/VideoView;->mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;
    invoke-static {v6}, Lcom/mediatek/gallery3d/video/MTKVideoView;->access$2300(Lcom/mediatek/gallery3d/video/MTKVideoView;)Landroid/media/MediaPlayer$OnErrorListener;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 192
    iget-object v6, p0, Lcom/mediatek/gallery3d/video/MTKVideoView$3;->this$0:Lcom/mediatek/gallery3d/video/MTKVideoView;

    #getter for: Landroid/widget/VideoView;->mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;
    invoke-static {v6}, Lcom/mediatek/gallery3d/video/MTKVideoView;->access$2500(Lcom/mediatek/gallery3d/video/MTKVideoView;)Landroid/media/MediaPlayer$OnErrorListener;

    move-result-object v6

    iget-object v7, p0, Lcom/mediatek/gallery3d/video/MTKVideoView$3;->this$0:Lcom/mediatek/gallery3d/video/MTKVideoView;

    #getter for: Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v7}, Lcom/mediatek/gallery3d/video/MTKVideoView;->access$2400(Lcom/mediatek/gallery3d/video/MTKVideoView;)Landroid/media/MediaPlayer;

    move-result-object v7

    invoke-interface {v6, v7, p2, p3}, Landroid/media/MediaPlayer$OnErrorListener;->onError(Landroid/media/MediaPlayer;II)Z

    move-result v6

    if-nez v6, :cond_0

    .line 202
    :cond_3
    iget-object v6, p0, Lcom/mediatek/gallery3d/video/MTKVideoView$3;->this$0:Lcom/mediatek/gallery3d/video/MTKVideoView;

    invoke-virtual {v6}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 203
    iget-object v6, p0, Lcom/mediatek/gallery3d/video/MTKVideoView$3;->this$0:Lcom/mediatek/gallery3d/video/MTKVideoView;

    #getter for: Landroid/view/View;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/mediatek/gallery3d/video/MTKVideoView;->access$2600(Lcom/mediatek/gallery3d/video/MTKVideoView;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 206
    .local v5, r:Landroid/content/res/Resources;
    const/16 v6, 0x104

    if-ne p2, v6, :cond_5

    .line 207
    const v2, 0x2050057

    .line 222
    .local v2, messageId:I
    :goto_1
    const-string v0, "ERROR_DIALOG_TAG"

    .line 223
    .local v0, errorDialogTag:Ljava/lang/String;
    iget-object v6, p0, Lcom/mediatek/gallery3d/video/MTKVideoView$3;->this$0:Lcom/mediatek/gallery3d/video/MTKVideoView;

    #getter for: Landroid/view/View;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/mediatek/gallery3d/video/MTKVideoView;->access$2700(Lcom/mediatek/gallery3d/video/MTKVideoView;)Landroid/content/Context;

    move-result-object v6

    check-cast v6, Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    .line 224
    .local v1, fragmentManager:Landroid/app/FragmentManager;
    const-string v6, "ERROR_DIALOG_TAG"

    invoke-virtual {v1, v6}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v4

    check-cast v4, Landroid/app/DialogFragment;

    .line 226
    .local v4, oldFragment:Landroid/app/DialogFragment;
    if-eqz v4, :cond_4

    .line 227
    invoke-virtual {v4}, Landroid/app/DialogFragment;->dismissAllowingStateLoss()V

    .line 229
    :cond_4
    invoke-static {v2}, Lcom/mediatek/gallery3d/video/ErrorDialogFragment;->newInstance(I)Lcom/mediatek/gallery3d/video/ErrorDialogFragment;

    move-result-object v3

    .line 230
    .local v3, newFragment:Landroid/app/DialogFragment;
    const-string v6, "ERROR_DIALOG_TAG"

    invoke-virtual {v3, v1, v6}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 231
    invoke-virtual {v1}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    goto/16 :goto_0

    .line 208
    .end local v0           #errorDialogTag:Ljava/lang/String;
    .end local v1           #fragmentManager:Landroid/app/FragmentManager;
    .end local v2           #messageId:I
    .end local v3           #newFragment:Landroid/app/DialogFragment;
    .end local v4           #oldFragment:Landroid/app/DialogFragment;
    :cond_5
    const/16 v6, 0x105

    if-ne p2, v6, :cond_6

    .line 209
    const v2, 0x2050058

    .restart local v2       #messageId:I
    goto :goto_1

    .line 210
    .end local v2           #messageId:I
    :cond_6
    const/16 v6, 0x106

    if-ne p2, v6, :cond_7

    .line 211
    const v2, 0x2050059

    .restart local v2       #messageId:I
    goto :goto_1

    .line 212
    .end local v2           #messageId:I
    :cond_7
    const/16 v6, 0x107

    if-ne p2, v6, :cond_8

    .line 213
    const v2, 0x205005a

    .restart local v2       #messageId:I
    goto :goto_1

    .line 214
    .end local v2           #messageId:I
    :cond_8
    const/16 v6, 0x108

    if-ne p2, v6, :cond_9

    .line 215
    const v2, 0x2050076

    .restart local v2       #messageId:I
    goto :goto_1

    .line 216
    .end local v2           #messageId:I
    :cond_9
    const/16 v6, 0xc8

    if-ne p2, v6, :cond_a

    .line 217
    const v2, 0x1040015

    .restart local v2       #messageId:I
    goto :goto_1

    .line 219
    .end local v2           #messageId:I
    :cond_a
    const v2, 0x1040011

    .restart local v2       #messageId:I
    goto :goto_1
.end method
