.class public Lcom/android/gallery3d/data/UriImage$UriImageRequest;
.super Ljava/lang/Object;
.source "UriImage.java"

# interfaces
.implements Lcom/android/gallery3d/util/ThreadPool$Job;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/data/UriImage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "UriImageRequest"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/gallery3d/util/ThreadPool$Job",
        "<",
        "Lcom/mediatek/gallery3d/util/MediatekFeature$DataBundle;",
        ">;"
    }
.end annotation


# instance fields
.field private mParams:Lcom/mediatek/gallery3d/util/MediatekFeature$Params;

.field private mType:I

.field final synthetic this$0:Lcom/android/gallery3d/data/UriImage;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/data/UriImage;ILcom/mediatek/gallery3d/util/MediatekFeature$Params;)V
    .locals 0
    .parameter
    .parameter "type"
    .parameter "params"

    .prologue
    .line 518
    iput-object p1, p0, Lcom/android/gallery3d/data/UriImage$UriImageRequest;->this$0:Lcom/android/gallery3d/data/UriImage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 519
    iput p2, p0, Lcom/android/gallery3d/data/UriImage$UriImageRequest;->mType:I

    .line 520
    iput-object p3, p0, Lcom/android/gallery3d/data/UriImage$UriImageRequest;->mParams:Lcom/mediatek/gallery3d/util/MediatekFeature$Params;

    .line 521
    return-void
.end method


# virtual methods
.method public run(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Lcom/mediatek/gallery3d/util/MediatekFeature$DataBundle;
    .locals 4
    .parameter "jc"

    .prologue
    .line 524
    iget-object v0, p0, Lcom/android/gallery3d/data/UriImage$UriImageRequest;->this$0:Lcom/android/gallery3d/data/UriImage;

    #getter for: Lcom/android/gallery3d/data/UriImage;->mUri:Landroid/net/Uri;
    invoke-static {v0}, Lcom/android/gallery3d/data/UriImage;->access$800(Lcom/android/gallery3d/data/UriImage;)Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/data/UriImage$UriImageRequest;->mParams:Lcom/mediatek/gallery3d/util/MediatekFeature$Params;

    if-nez v0, :cond_1

    .line 525
    :cond_0
    const-string v0, "UriImage"

    const-string v1, "UriImageRequest:got null mUri or mParams"

    invoke-static {v0, v1}, Lcom/android/gallery3d/data/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    const/4 v0, 0x0

    .line 528
    :goto_0
    return-object v0

    :cond_1
    iget-object v1, p0, Lcom/android/gallery3d/data/UriImage$UriImageRequest;->mParams:Lcom/mediatek/gallery3d/util/MediatekFeature$Params;

    iget-object v0, p0, Lcom/android/gallery3d/data/UriImage$UriImageRequest;->this$0:Lcom/android/gallery3d/data/UriImage;

    #getter for: Lcom/android/gallery3d/data/UriImage;->mApplication:Lcom/android/gallery3d/app/GalleryApp;
    invoke-static {v0}, Lcom/android/gallery3d/data/UriImage;->access$700(Lcom/android/gallery3d/data/UriImage;)Lcom/android/gallery3d/app/GalleryApp;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v2, p0, Lcom/android/gallery3d/data/UriImage$UriImageRequest;->this$0:Lcom/android/gallery3d/data/UriImage;

    #getter for: Lcom/android/gallery3d/data/UriImage;->mUri:Landroid/net/Uri;
    invoke-static {v2}, Lcom/android/gallery3d/data/UriImage;->access$800(Lcom/android/gallery3d/data/UriImage;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/gallery3d/data/UriImage$UriImageRequest;->this$0:Lcom/android/gallery3d/data/UriImage;

    #getter for: Lcom/android/gallery3d/data/UriImage;->mContentType:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/gallery3d/data/UriImage;->access$900(Lcom/android/gallery3d/data/UriImage;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v1, v0, v2, v3}, Lcom/mediatek/gallery3d/data/RequestHelper;->requestDataBundle(Lcom/android/gallery3d/util/ThreadPool$JobContext;Lcom/mediatek/gallery3d/util/MediatekFeature$Params;Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Lcom/mediatek/gallery3d/util/MediatekFeature$DataBundle;

    move-result-object v0

    goto :goto_0
.end method

.method public bridge synthetic run(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 514
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/data/UriImage$UriImageRequest;->run(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Lcom/mediatek/gallery3d/util/MediatekFeature$DataBundle;

    move-result-object v0

    return-object v0
.end method
