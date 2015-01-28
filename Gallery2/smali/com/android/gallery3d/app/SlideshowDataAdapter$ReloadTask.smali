.class Lcom/android/gallery3d/app/SlideshowDataAdapter$ReloadTask;
.super Ljava/lang/Object;
.source "SlideshowDataAdapter.java"

# interfaces
.implements Lcom/android/gallery3d/util/ThreadPool$Job;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/app/SlideshowDataAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ReloadTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/gallery3d/util/ThreadPool$Job",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/app/SlideshowDataAdapter;


# direct methods
.method private constructor <init>(Lcom/android/gallery3d/app/SlideshowDataAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 94
    iput-object p1, p0, Lcom/android/gallery3d/app/SlideshowDataAdapter$ReloadTask;->this$0:Lcom/android/gallery3d/app/SlideshowDataAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/gallery3d/app/SlideshowDataAdapter;Lcom/android/gallery3d/app/SlideshowDataAdapter$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 94
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/SlideshowDataAdapter$ReloadTask;-><init>(Lcom/android/gallery3d/app/SlideshowDataAdapter;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic run(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 94
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/app/SlideshowDataAdapter$ReloadTask;->run(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public run(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Void;
    .locals 8
    .parameter "jc"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 97
    :goto_0
    iget-object v4, p0, Lcom/android/gallery3d/app/SlideshowDataAdapter$ReloadTask;->this$0:Lcom/android/gallery3d/app/SlideshowDataAdapter;

    monitor-enter v4

    .line 98
    :goto_1
    :try_start_0
    iget-object v3, p0, Lcom/android/gallery3d/app/SlideshowDataAdapter$ReloadTask;->this$0:Lcom/android/gallery3d/app/SlideshowDataAdapter;

    #getter for: Lcom/android/gallery3d/app/SlideshowDataAdapter;->mIsActive:Z
    invoke-static {v3}, Lcom/android/gallery3d/app/SlideshowDataAdapter;->access$100(Lcom/android/gallery3d/app/SlideshowDataAdapter;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/gallery3d/app/SlideshowDataAdapter$ReloadTask;->this$0:Lcom/android/gallery3d/app/SlideshowDataAdapter;

    #getter for: Lcom/android/gallery3d/app/SlideshowDataAdapter;->mDataReady:Z
    invoke-static {v3}, Lcom/android/gallery3d/app/SlideshowDataAdapter;->access$200(Lcom/android/gallery3d/app/SlideshowDataAdapter;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/gallery3d/app/SlideshowDataAdapter$ReloadTask;->this$0:Lcom/android/gallery3d/app/SlideshowDataAdapter;

    #getter for: Lcom/android/gallery3d/app/SlideshowDataAdapter;->mImageQueue:Ljava/util/LinkedList;
    invoke-static {v3}, Lcom/android/gallery3d/app/SlideshowDataAdapter;->access$300(Lcom/android/gallery3d/app/SlideshowDataAdapter;)Ljava/util/LinkedList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    const/4 v5, 0x3

    if-lt v3, v5, :cond_1

    .line 101
    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/android/gallery3d/app/SlideshowDataAdapter$ReloadTask;->this$0:Lcom/android/gallery3d/app/SlideshowDataAdapter;

    invoke-virtual {v3}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 102
    :catch_0
    move-exception v3

    goto :goto_1

    .line 107
    :cond_1
    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 108
    iget-object v3, p0, Lcom/android/gallery3d/app/SlideshowDataAdapter$ReloadTask;->this$0:Lcom/android/gallery3d/app/SlideshowDataAdapter;

    #getter for: Lcom/android/gallery3d/app/SlideshowDataAdapter;->mIsActive:Z
    invoke-static {v3}, Lcom/android/gallery3d/app/SlideshowDataAdapter;->access$100(Lcom/android/gallery3d/app/SlideshowDataAdapter;)Z

    move-result v3

    if-nez v3, :cond_2

    const/4 v3, 0x0

    return-object v3

    .line 107
    :catchall_0
    move-exception v3

    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v3

    .line 109
    :cond_2
    iget-object v3, p0, Lcom/android/gallery3d/app/SlideshowDataAdapter$ReloadTask;->this$0:Lcom/android/gallery3d/app/SlideshowDataAdapter;

    #setter for: Lcom/android/gallery3d/app/SlideshowDataAdapter;->mNeedReset:Z
    invoke-static {v3, v6}, Lcom/android/gallery3d/app/SlideshowDataAdapter;->access$402(Lcom/android/gallery3d/app/SlideshowDataAdapter;Z)Z

    .line 111
    iget-object v3, p0, Lcom/android/gallery3d/app/SlideshowDataAdapter$ReloadTask;->this$0:Lcom/android/gallery3d/app/SlideshowDataAdapter;

    #calls: Lcom/android/gallery3d/app/SlideshowDataAdapter;->loadItem()Lcom/android/gallery3d/data/MediaItem;
    invoke-static {v3}, Lcom/android/gallery3d/app/SlideshowDataAdapter;->access$500(Lcom/android/gallery3d/app/SlideshowDataAdapter;)Lcom/android/gallery3d/data/MediaItem;

    move-result-object v1

    .line 113
    .local v1, item:Lcom/android/gallery3d/data/MediaItem;
    iget-object v3, p0, Lcom/android/gallery3d/app/SlideshowDataAdapter$ReloadTask;->this$0:Lcom/android/gallery3d/app/SlideshowDataAdapter;

    #getter for: Lcom/android/gallery3d/app/SlideshowDataAdapter;->mNeedReset:Z
    invoke-static {v3}, Lcom/android/gallery3d/app/SlideshowDataAdapter;->access$400(Lcom/android/gallery3d/app/SlideshowDataAdapter;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 114
    iget-object v4, p0, Lcom/android/gallery3d/app/SlideshowDataAdapter$ReloadTask;->this$0:Lcom/android/gallery3d/app/SlideshowDataAdapter;

    monitor-enter v4

    .line 115
    :try_start_4
    iget-object v3, p0, Lcom/android/gallery3d/app/SlideshowDataAdapter$ReloadTask;->this$0:Lcom/android/gallery3d/app/SlideshowDataAdapter;

    #getter for: Lcom/android/gallery3d/app/SlideshowDataAdapter;->mImageQueue:Ljava/util/LinkedList;
    invoke-static {v3}, Lcom/android/gallery3d/app/SlideshowDataAdapter;->access$300(Lcom/android/gallery3d/app/SlideshowDataAdapter;)Ljava/util/LinkedList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/LinkedList;->clear()V

    .line 116
    iget-object v3, p0, Lcom/android/gallery3d/app/SlideshowDataAdapter$ReloadTask;->this$0:Lcom/android/gallery3d/app/SlideshowDataAdapter;

    iget-object v5, p0, Lcom/android/gallery3d/app/SlideshowDataAdapter$ReloadTask;->this$0:Lcom/android/gallery3d/app/SlideshowDataAdapter;

    #getter for: Lcom/android/gallery3d/app/SlideshowDataAdapter;->mNextOutput:I
    invoke-static {v5}, Lcom/android/gallery3d/app/SlideshowDataAdapter;->access$700(Lcom/android/gallery3d/app/SlideshowDataAdapter;)I

    move-result v5

    #setter for: Lcom/android/gallery3d/app/SlideshowDataAdapter;->mLoadIndex:I
    invoke-static {v3, v5}, Lcom/android/gallery3d/app/SlideshowDataAdapter;->access$602(Lcom/android/gallery3d/app/SlideshowDataAdapter;I)I

    .line 117
    monitor-exit v4

    goto :goto_0

    :catchall_1
    move-exception v3

    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v3

    .line 121
    :cond_3
    if-nez v1, :cond_5

    .line 122
    iget-object v4, p0, Lcom/android/gallery3d/app/SlideshowDataAdapter$ReloadTask;->this$0:Lcom/android/gallery3d/app/SlideshowDataAdapter;

    monitor-enter v4

    .line 123
    :try_start_5
    iget-object v3, p0, Lcom/android/gallery3d/app/SlideshowDataAdapter$ReloadTask;->this$0:Lcom/android/gallery3d/app/SlideshowDataAdapter;

    #getter for: Lcom/android/gallery3d/app/SlideshowDataAdapter;->mNeedReload:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v3}, Lcom/android/gallery3d/app/SlideshowDataAdapter;->access$800(Lcom/android/gallery3d/app/SlideshowDataAdapter;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/android/gallery3d/app/SlideshowDataAdapter$ReloadTask;->this$0:Lcom/android/gallery3d/app/SlideshowDataAdapter;

    const/4 v5, 0x0

    #setter for: Lcom/android/gallery3d/app/SlideshowDataAdapter;->mDataReady:Z
    invoke-static {v3, v5}, Lcom/android/gallery3d/app/SlideshowDataAdapter;->access$202(Lcom/android/gallery3d/app/SlideshowDataAdapter;Z)Z

    .line 124
    :cond_4
    iget-object v3, p0, Lcom/android/gallery3d/app/SlideshowDataAdapter$ReloadTask;->this$0:Lcom/android/gallery3d/app/SlideshowDataAdapter;

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V

    .line 125
    monitor-exit v4

    goto/16 :goto_0

    :catchall_2
    move-exception v3

    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v3

    .line 129
    :cond_5
    invoke-virtual {v1, v7}, Lcom/android/gallery3d/data/MediaItem;->requestImage(I)Lcom/android/gallery3d/util/ThreadPool$Job;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/android/gallery3d/util/ThreadPool$Job;->run(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 133
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_7

    .line 134
    iget-object v4, p0, Lcom/android/gallery3d/app/SlideshowDataAdapter$ReloadTask;->this$0:Lcom/android/gallery3d/app/SlideshowDataAdapter;

    monitor-enter v4

    .line 135
    :try_start_6
    new-instance v2, Lcom/android/gallery3d/app/SlideshowPage$Slide;

    iget-object v3, p0, Lcom/android/gallery3d/app/SlideshowDataAdapter$ReloadTask;->this$0:Lcom/android/gallery3d/app/SlideshowDataAdapter;

    #getter for: Lcom/android/gallery3d/app/SlideshowDataAdapter;->mLoadIndex:I
    invoke-static {v3}, Lcom/android/gallery3d/app/SlideshowDataAdapter;->access$600(Lcom/android/gallery3d/app/SlideshowDataAdapter;)I

    move-result v3

    invoke-direct {v2, v1, v3, v0}, Lcom/android/gallery3d/app/SlideshowPage$Slide;-><init>(Lcom/android/gallery3d/data/MediaItem;ILandroid/graphics/Bitmap;)V

    .line 136
    .local v2, slide:Lcom/android/gallery3d/app/SlideshowPage$Slide;
    invoke-virtual {v1}, Lcom/android/gallery3d/data/MediaItem;->getSubType()I

    move-result v3

    iput v3, v2, Lcom/android/gallery3d/app/SlideshowPage$Slide;->subType:I

    .line 137
    iget-object v3, p0, Lcom/android/gallery3d/app/SlideshowDataAdapter$ReloadTask;->this$0:Lcom/android/gallery3d/app/SlideshowDataAdapter;

    #getter for: Lcom/android/gallery3d/app/SlideshowDataAdapter;->mImageQueue:Ljava/util/LinkedList;
    invoke-static {v3}, Lcom/android/gallery3d/app/SlideshowDataAdapter;->access$300(Lcom/android/gallery3d/app/SlideshowDataAdapter;)Ljava/util/LinkedList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 138
    iget-object v3, p0, Lcom/android/gallery3d/app/SlideshowDataAdapter$ReloadTask;->this$0:Lcom/android/gallery3d/app/SlideshowDataAdapter;

    #getter for: Lcom/android/gallery3d/app/SlideshowDataAdapter;->mImageQueue:Ljava/util/LinkedList;
    invoke-static {v3}, Lcom/android/gallery3d/app/SlideshowDataAdapter;->access$300(Lcom/android/gallery3d/app/SlideshowDataAdapter;)Ljava/util/LinkedList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v3

    if-ne v3, v7, :cond_6

    .line 139
    iget-object v3, p0, Lcom/android/gallery3d/app/SlideshowDataAdapter$ReloadTask;->this$0:Lcom/android/gallery3d/app/SlideshowDataAdapter;

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V

    .line 141
    :cond_6
    monitor-exit v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 143
    .end local v2           #slide:Lcom/android/gallery3d/app/SlideshowPage$Slide;
    :cond_7
    iget-object v3, p0, Lcom/android/gallery3d/app/SlideshowDataAdapter$ReloadTask;->this$0:Lcom/android/gallery3d/app/SlideshowDataAdapter;

    invoke-static {v3}, Lcom/android/gallery3d/app/SlideshowDataAdapter;->access$604(Lcom/android/gallery3d/app/SlideshowDataAdapter;)I

    goto/16 :goto_0

    .line 141
    :catchall_3
    move-exception v3

    :try_start_7
    monitor-exit v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    throw v3
.end method
