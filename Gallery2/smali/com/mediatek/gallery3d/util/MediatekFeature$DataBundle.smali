.class public Lcom/mediatek/gallery3d/util/MediatekFeature$DataBundle;
.super Ljava/lang/Object;
.source "MediatekFeature.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/gallery3d/util/MediatekFeature;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DataBundle"
.end annotation


# instance fields
.field public firstFrame:Landroid/graphics/Bitmap;

.field public firstFullFrame:Lcom/mediatek/gallery3d/data/RegionDecoder;

.field public gifDecoder:Lcom/mediatek/gallery3d/gif/GifDecoderWrapper;

.field public originalFrame:Landroid/graphics/Bitmap;

.field public originalFullFrame:Lcom/mediatek/gallery3d/data/RegionDecoder;

.field public secondFrame:Landroid/graphics/Bitmap;

.field public secondFullFrame:Lcom/mediatek/gallery3d/data/RegionDecoder;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 312
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 313
    iput-object v0, p0, Lcom/mediatek/gallery3d/util/MediatekFeature$DataBundle;->originalFrame:Landroid/graphics/Bitmap;

    .line 314
    iput-object v0, p0, Lcom/mediatek/gallery3d/util/MediatekFeature$DataBundle;->firstFrame:Landroid/graphics/Bitmap;

    .line 315
    iput-object v0, p0, Lcom/mediatek/gallery3d/util/MediatekFeature$DataBundle;->secondFrame:Landroid/graphics/Bitmap;

    .line 316
    iput-object v0, p0, Lcom/mediatek/gallery3d/util/MediatekFeature$DataBundle;->originalFullFrame:Lcom/mediatek/gallery3d/data/RegionDecoder;

    .line 317
    iput-object v0, p0, Lcom/mediatek/gallery3d/util/MediatekFeature$DataBundle;->firstFullFrame:Lcom/mediatek/gallery3d/data/RegionDecoder;

    .line 318
    iput-object v0, p0, Lcom/mediatek/gallery3d/util/MediatekFeature$DataBundle;->secondFullFrame:Lcom/mediatek/gallery3d/data/RegionDecoder;

    .line 319
    iput-object v0, p0, Lcom/mediatek/gallery3d/util/MediatekFeature$DataBundle;->gifDecoder:Lcom/mediatek/gallery3d/gif/GifDecoderWrapper;

    .line 320
    return-void
.end method


# virtual methods
.method public info()V
    .locals 1

    .prologue
    .line 350
    const-string v0, "MediatekFeature"

    invoke-virtual {p0, v0}, Lcom/mediatek/gallery3d/util/MediatekFeature$DataBundle;->info(Ljava/lang/String;)V

    .line 351
    return-void
.end method

.method public info(Ljava/lang/String;)V
    .locals 2
    .parameter "tag"

    .prologue
    .line 355
    iget-object v0, p0, Lcom/mediatek/gallery3d/util/MediatekFeature$DataBundle;->originalFrame:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 356
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DataBundle:originalFrame["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/gallery3d/util/MediatekFeature$DataBundle;->originalFrame:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/gallery3d/util/MediatekFeature$DataBundle;->originalFrame:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    :cond_0
    iget-object v0, p0, Lcom/mediatek/gallery3d/util/MediatekFeature$DataBundle;->firstFrame:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 361
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DataBundle:firstFrame["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/gallery3d/util/MediatekFeature$DataBundle;->firstFrame:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/gallery3d/util/MediatekFeature$DataBundle;->firstFrame:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    :cond_1
    iget-object v0, p0, Lcom/mediatek/gallery3d/util/MediatekFeature$DataBundle;->secondFrame:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    .line 366
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DataBundle:secondFrame["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/gallery3d/util/MediatekFeature$DataBundle;->secondFrame:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/gallery3d/util/MediatekFeature$DataBundle;->secondFrame:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    :cond_2
    iget-object v0, p0, Lcom/mediatek/gallery3d/util/MediatekFeature$DataBundle;->originalFullFrame:Lcom/mediatek/gallery3d/data/RegionDecoder;

    if-eqz v0, :cond_3

    .line 371
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DataBundle:originalFullFrame["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/gallery3d/util/MediatekFeature$DataBundle;->originalFullFrame:Lcom/mediatek/gallery3d/data/RegionDecoder;

    invoke-virtual {v1}, Lcom/mediatek/gallery3d/data/RegionDecoder;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/gallery3d/util/MediatekFeature$DataBundle;->originalFullFrame:Lcom/mediatek/gallery3d/data/RegionDecoder;

    invoke-virtual {v1}, Lcom/mediatek/gallery3d/data/RegionDecoder;->getHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    :cond_3
    iget-object v0, p0, Lcom/mediatek/gallery3d/util/MediatekFeature$DataBundle;->firstFullFrame:Lcom/mediatek/gallery3d/data/RegionDecoder;

    if-eqz v0, :cond_4

    .line 377
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DataBundle:firstFullFrame["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/gallery3d/util/MediatekFeature$DataBundle;->firstFullFrame:Lcom/mediatek/gallery3d/data/RegionDecoder;

    invoke-virtual {v1}, Lcom/mediatek/gallery3d/data/RegionDecoder;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/gallery3d/util/MediatekFeature$DataBundle;->firstFullFrame:Lcom/mediatek/gallery3d/data/RegionDecoder;

    invoke-virtual {v1}, Lcom/mediatek/gallery3d/data/RegionDecoder;->getHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    :cond_4
    iget-object v0, p0, Lcom/mediatek/gallery3d/util/MediatekFeature$DataBundle;->secondFullFrame:Lcom/mediatek/gallery3d/data/RegionDecoder;

    if-eqz v0, :cond_5

    .line 382
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DataBundle:secondFullFrame["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/gallery3d/util/MediatekFeature$DataBundle;->secondFullFrame:Lcom/mediatek/gallery3d/data/RegionDecoder;

    invoke-virtual {v1}, Lcom/mediatek/gallery3d/data/RegionDecoder;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/gallery3d/util/MediatekFeature$DataBundle;->secondFullFrame:Lcom/mediatek/gallery3d/data/RegionDecoder;

    invoke-virtual {v1}, Lcom/mediatek/gallery3d/data/RegionDecoder;->getHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    :cond_5
    iget-object v0, p0, Lcom/mediatek/gallery3d/util/MediatekFeature$DataBundle;->gifDecoder:Lcom/mediatek/gallery3d/gif/GifDecoderWrapper;

    if-eqz v0, :cond_6

    .line 387
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DataBundle:gifDecoder,getTotalFrameCount()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/gallery3d/util/MediatekFeature$DataBundle;->gifDecoder:Lcom/mediatek/gallery3d/gif/GifDecoderWrapper;

    invoke-virtual {v1}, Lcom/mediatek/gallery3d/gif/GifDecoderWrapper;->getTotalFrameCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    :cond_6
    return-void
.end method

.method public recycle()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 322
    iget-object v0, p0, Lcom/mediatek/gallery3d/util/MediatekFeature$DataBundle;->originalFrame:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 323
    iget-object v0, p0, Lcom/mediatek/gallery3d/util/MediatekFeature$DataBundle;->originalFrame:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 325
    :cond_0
    iget-object v0, p0, Lcom/mediatek/gallery3d/util/MediatekFeature$DataBundle;->firstFrame:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 326
    iget-object v0, p0, Lcom/mediatek/gallery3d/util/MediatekFeature$DataBundle;->firstFrame:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 328
    :cond_1
    iget-object v0, p0, Lcom/mediatek/gallery3d/util/MediatekFeature$DataBundle;->secondFrame:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    .line 329
    iget-object v0, p0, Lcom/mediatek/gallery3d/util/MediatekFeature$DataBundle;->secondFrame:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 331
    :cond_2
    iget-object v0, p0, Lcom/mediatek/gallery3d/util/MediatekFeature$DataBundle;->originalFullFrame:Lcom/mediatek/gallery3d/data/RegionDecoder;

    if-eqz v0, :cond_3

    .line 332
    iget-object v0, p0, Lcom/mediatek/gallery3d/util/MediatekFeature$DataBundle;->originalFullFrame:Lcom/mediatek/gallery3d/data/RegionDecoder;

    invoke-virtual {v0}, Lcom/mediatek/gallery3d/data/RegionDecoder;->release()V

    .line 334
    :cond_3
    iget-object v0, p0, Lcom/mediatek/gallery3d/util/MediatekFeature$DataBundle;->firstFullFrame:Lcom/mediatek/gallery3d/data/RegionDecoder;

    if-eqz v0, :cond_4

    .line 335
    iget-object v0, p0, Lcom/mediatek/gallery3d/util/MediatekFeature$DataBundle;->firstFullFrame:Lcom/mediatek/gallery3d/data/RegionDecoder;

    invoke-virtual {v0}, Lcom/mediatek/gallery3d/data/RegionDecoder;->release()V

    .line 337
    :cond_4
    iget-object v0, p0, Lcom/mediatek/gallery3d/util/MediatekFeature$DataBundle;->secondFullFrame:Lcom/mediatek/gallery3d/data/RegionDecoder;

    if-eqz v0, :cond_5

    .line 338
    iget-object v0, p0, Lcom/mediatek/gallery3d/util/MediatekFeature$DataBundle;->secondFullFrame:Lcom/mediatek/gallery3d/data/RegionDecoder;

    invoke-virtual {v0}, Lcom/mediatek/gallery3d/data/RegionDecoder;->release()V

    .line 341
    :cond_5
    iput-object v1, p0, Lcom/mediatek/gallery3d/util/MediatekFeature$DataBundle;->originalFrame:Landroid/graphics/Bitmap;

    .line 342
    iput-object v1, p0, Lcom/mediatek/gallery3d/util/MediatekFeature$DataBundle;->firstFrame:Landroid/graphics/Bitmap;

    .line 343
    iput-object v1, p0, Lcom/mediatek/gallery3d/util/MediatekFeature$DataBundle;->secondFrame:Landroid/graphics/Bitmap;

    .line 344
    iput-object v1, p0, Lcom/mediatek/gallery3d/util/MediatekFeature$DataBundle;->firstFullFrame:Lcom/mediatek/gallery3d/data/RegionDecoder;

    .line 345
    iput-object v1, p0, Lcom/mediatek/gallery3d/util/MediatekFeature$DataBundle;->secondFullFrame:Lcom/mediatek/gallery3d/data/RegionDecoder;

    .line 346
    iput-object v1, p0, Lcom/mediatek/gallery3d/util/MediatekFeature$DataBundle;->gifDecoder:Lcom/mediatek/gallery3d/gif/GifDecoderWrapper;

    .line 347
    return-void
.end method
