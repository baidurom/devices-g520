.class public Lcom/mediatek/gallery3d/util/MediatekFeature$Params;
.super Ljava/lang/Object;
.source "MediatekFeature.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/gallery3d/util/MediatekFeature;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Params"
.end annotation


# static fields
.field public static final THUMBNAIL_TARGET_SIZE_LARGER:I = 0x3c0


# instance fields
.field public inFirstFrame:Z

.field public inFirstFullFrame:Z

.field public inGifDecoder:Z

.field public inOriginalFrame:Z

.field public inOriginalFullFrame:Z

.field public inOriginalTargetSize:I

.field public inPQEnhance:Z

.field public inSampleDown:Z

.field public inSecondFrame:Z

.field public inSecondFullFrame:Z

.field public inType:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 216
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 217
    iput-boolean v1, p0, Lcom/mediatek/gallery3d/util/MediatekFeature$Params;->inOriginalFrame:Z

    .line 218
    iput-boolean v1, p0, Lcom/mediatek/gallery3d/util/MediatekFeature$Params;->inOriginalFullFrame:Z

    .line 219
    iput-boolean v1, p0, Lcom/mediatek/gallery3d/util/MediatekFeature$Params;->inFirstFrame:Z

    .line 220
    iput-boolean v1, p0, Lcom/mediatek/gallery3d/util/MediatekFeature$Params;->inSecondFrame:Z

    .line 221
    iput-boolean v1, p0, Lcom/mediatek/gallery3d/util/MediatekFeature$Params;->inFirstFullFrame:Z

    .line 222
    iput-boolean v1, p0, Lcom/mediatek/gallery3d/util/MediatekFeature$Params;->inSecondFullFrame:Z

    .line 223
    iput-boolean v1, p0, Lcom/mediatek/gallery3d/util/MediatekFeature$Params;->inGifDecoder:Z

    .line 225
    const/4 v0, 0x1

    iput v0, p0, Lcom/mediatek/gallery3d/util/MediatekFeature$Params;->inType:I

    .line 226
    const/16 v0, 0x280

    iput v0, p0, Lcom/mediatek/gallery3d/util/MediatekFeature$Params;->inOriginalTargetSize:I

    .line 227
    iput-boolean v1, p0, Lcom/mediatek/gallery3d/util/MediatekFeature$Params;->inSampleDown:Z

    .line 228
    iput-boolean v1, p0, Lcom/mediatek/gallery3d/util/MediatekFeature$Params;->inPQEnhance:Z

    .line 229
    return-void
.end method


# virtual methods
.method public info()V
    .locals 1

    .prologue
    .line 232
    const-string v0, "MediatekFeature"

    invoke-virtual {p0, v0}, Lcom/mediatek/gallery3d/util/MediatekFeature$Params;->info(Ljava/lang/String;)V

    .line 233
    return-void
.end method

.method public info(Ljava/lang/String;)V
    .locals 2
    .parameter "tag"

    .prologue
    .line 236
    iget-boolean v0, p0, Lcom/mediatek/gallery3d/util/MediatekFeature$Params;->inOriginalFrame:Z

    if-eqz v0, :cond_0

    .line 237
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Params:inOriginalFrame="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/mediatek/gallery3d/util/MediatekFeature$Params;->inOriginalFrame:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    :cond_0
    iget-boolean v0, p0, Lcom/mediatek/gallery3d/util/MediatekFeature$Params;->inFirstFrame:Z

    if-eqz v0, :cond_1

    .line 240
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Params:inFirstFrame="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/mediatek/gallery3d/util/MediatekFeature$Params;->inFirstFrame:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    :cond_1
    iget-boolean v0, p0, Lcom/mediatek/gallery3d/util/MediatekFeature$Params;->inSecondFrame:Z

    if-eqz v0, :cond_2

    .line 243
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Params:inSecondFrame="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/mediatek/gallery3d/util/MediatekFeature$Params;->inSecondFrame:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    :cond_2
    iget-boolean v0, p0, Lcom/mediatek/gallery3d/util/MediatekFeature$Params;->inOriginalFullFrame:Z

    if-eqz v0, :cond_3

    .line 246
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Params:inOriginalFullFrame="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/mediatek/gallery3d/util/MediatekFeature$Params;->inOriginalFullFrame:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    :cond_3
    iget-boolean v0, p0, Lcom/mediatek/gallery3d/util/MediatekFeature$Params;->inFirstFullFrame:Z

    if-eqz v0, :cond_4

    .line 249
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Params:inFirstFullFrame="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/mediatek/gallery3d/util/MediatekFeature$Params;->inFirstFullFrame:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    :cond_4
    iget-boolean v0, p0, Lcom/mediatek/gallery3d/util/MediatekFeature$Params;->inSecondFullFrame:Z

    if-eqz v0, :cond_5

    .line 252
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Params:inSecondFullFrame="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/mediatek/gallery3d/util/MediatekFeature$Params;->inSecondFullFrame:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    :cond_5
    iget-boolean v0, p0, Lcom/mediatek/gallery3d/util/MediatekFeature$Params;->inGifDecoder:Z

    if-eqz v0, :cond_6

    .line 255
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Params:inGifDecoder="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/mediatek/gallery3d/util/MediatekFeature$Params;->inGifDecoder:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    :cond_6
    iget v0, p0, Lcom/mediatek/gallery3d/util/MediatekFeature$Params;->inOriginalTargetSize:I

    if-eqz v0, :cond_7

    .line 258
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Params:inOriginalTargetSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/gallery3d/util/MediatekFeature$Params;->inOriginalTargetSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    :cond_7
    iget-boolean v0, p0, Lcom/mediatek/gallery3d/util/MediatekFeature$Params;->inSampleDown:Z

    if-eqz v0, :cond_8

    .line 261
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Params:inSampleDown="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/mediatek/gallery3d/util/MediatekFeature$Params;->inSampleDown:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    :cond_8
    iget-boolean v0, p0, Lcom/mediatek/gallery3d/util/MediatekFeature$Params;->inPQEnhance:Z

    if-eqz v0, :cond_9

    .line 264
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Params:inPQEnhance="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/mediatek/gallery3d/util/MediatekFeature$Params;->inPQEnhance:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    :cond_9
    return-void
.end method
