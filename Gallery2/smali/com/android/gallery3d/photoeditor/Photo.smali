.class public Lcom/android/gallery3d/photoeditor/Photo;
.super Ljava/lang/Object;
.source "Photo.java"


# static fields
.field private static final LOG:Z = true

.field private static final TAG:Ljava/lang/String; = "Photo"


# instance fields
.field private height:I

.field private texture:I

.field private width:I


# direct methods
.method private constructor <init>(III)V
    .locals 3
    .parameter "texture"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput p1, p0, Lcom/android/gallery3d/photoeditor/Photo;->texture:I

    .line 46
    iput p2, p0, Lcom/android/gallery3d/photoeditor/Photo;->width:I

    .line 47
    iput p3, p0, Lcom/android/gallery3d/photoeditor/Photo;->height:I

    .line 49
    const-string v0, "Photo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Photo("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/util/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    return-void
.end method

.method public static create(II)Lcom/android/gallery3d/photoeditor/Photo;
    .locals 2
    .parameter "width"
    .parameter "height"

    .prologue
    .line 41
    new-instance v0, Lcom/android/gallery3d/photoeditor/Photo;

    invoke-static {}, Lcom/android/gallery3d/photoeditor/RendererUtils;->createTexture()I

    move-result v1

    invoke-direct {v0, v1, p0, p1}, Lcom/android/gallery3d/photoeditor/Photo;-><init>(III)V

    return-object v0
.end method

.method public static create(Landroid/graphics/Bitmap;)Lcom/android/gallery3d/photoeditor/Photo;
    .locals 4
    .parameter "bitmap"

    .prologue
    .line 36
    if-eqz p0, :cond_0

    new-instance v0, Lcom/android/gallery3d/photoeditor/Photo;

    invoke-static {p0}, Lcom/android/gallery3d/photoeditor/RendererUtils;->createTexture(Landroid/graphics/Bitmap;)I

    move-result v1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/android/gallery3d/photoeditor/Photo;-><init>(III)V

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public changeDimension(II)V
    .locals 3
    .parameter "width"
    .parameter "height"

    .prologue
    .line 62
    iput p1, p0, Lcom/android/gallery3d/photoeditor/Photo;->width:I

    .line 63
    iput p2, p0, Lcom/android/gallery3d/photoeditor/Photo;->height:I

    .line 64
    iget v0, p0, Lcom/android/gallery3d/photoeditor/Photo;->texture:I

    invoke-static {v0}, Lcom/android/gallery3d/photoeditor/RendererUtils;->clearTexture(I)V

    .line 65
    invoke-static {}, Lcom/android/gallery3d/photoeditor/RendererUtils;->createTexture()I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/photoeditor/Photo;->texture:I

    .line 67
    const-string v0, "Photo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "changeDimension("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/util/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    return-void
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 87
    iget v0, p0, Lcom/android/gallery3d/photoeditor/Photo;->texture:I

    invoke-static {v0}, Lcom/android/gallery3d/photoeditor/RendererUtils;->clearTexture(I)V

    .line 88
    return-void
.end method

.method public height()I
    .locals 1

    .prologue
    .line 76
    iget v0, p0, Lcom/android/gallery3d/photoeditor/Photo;->height:I

    return v0
.end method

.method public matchDimension(Lcom/android/gallery3d/photoeditor/Photo;)Z
    .locals 2
    .parameter "photo"

    .prologue
    .line 58
    iget v0, p1, Lcom/android/gallery3d/photoeditor/Photo;->width:I

    iget v1, p0, Lcom/android/gallery3d/photoeditor/Photo;->width:I

    if-ne v0, v1, :cond_0

    iget v0, p1, Lcom/android/gallery3d/photoeditor/Photo;->height:I

    iget v1, p0, Lcom/android/gallery3d/photoeditor/Photo;->height:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public save()Landroid/graphics/Bitmap;
    .locals 3

    .prologue
    .line 80
    iget v0, p0, Lcom/android/gallery3d/photoeditor/Photo;->texture:I

    iget v1, p0, Lcom/android/gallery3d/photoeditor/Photo;->width:I

    iget v2, p0, Lcom/android/gallery3d/photoeditor/Photo;->height:I

    invoke-static {v0, v1, v2}, Lcom/android/gallery3d/photoeditor/RendererUtils;->saveTexture(III)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public texture()I
    .locals 1

    .prologue
    .line 54
    iget v0, p0, Lcom/android/gallery3d/photoeditor/Photo;->texture:I

    return v0
.end method

.method public width()I
    .locals 1

    .prologue
    .line 72
    iget v0, p0, Lcom/android/gallery3d/photoeditor/Photo;->width:I

    return v0
.end method
