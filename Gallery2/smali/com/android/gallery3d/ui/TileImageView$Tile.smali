.class Lcom/android/gallery3d/ui/TileImageView$Tile;
.super Lcom/android/gallery3d/ui/UploadedTexture;
.source "TileImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/ui/TileImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Tile"
.end annotation


# instance fields
.field public mDecodedTile:Landroid/graphics/Bitmap;

.field public mNext:Lcom/android/gallery3d/ui/TileImageView$Tile;

.field public mTileLevel:I

.field public volatile mTileState:I

.field public mX:I

.field public mY:I

.field final synthetic this$0:Lcom/android/gallery3d/ui/TileImageView;


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/ui/TileImageView;III)V
    .locals 1
    .parameter
    .parameter "x"
    .parameter "y"
    .parameter "level"

    .prologue
    .line 695
    iput-object p1, p0, Lcom/android/gallery3d/ui/TileImageView$Tile;->this$0:Lcom/android/gallery3d/ui/TileImageView;

    invoke-direct {p0}, Lcom/android/gallery3d/ui/UploadedTexture;-><init>()V

    .line 693
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/gallery3d/ui/TileImageView$Tile;->mTileState:I

    .line 696
    iput p2, p0, Lcom/android/gallery3d/ui/TileImageView$Tile;->mX:I

    .line 697
    iput p3, p0, Lcom/android/gallery3d/ui/TileImageView$Tile;->mY:I

    .line 698
    iput p4, p0, Lcom/android/gallery3d/ui/TileImageView$Tile;->mTileLevel:I

    .line 699
    return-void
.end method


# virtual methods
.method decode()Z
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 710
    :try_start_0
    iget-object v0, p0, Lcom/android/gallery3d/ui/TileImageView$Tile;->this$0:Lcom/android/gallery3d/ui/TileImageView;

    #getter for: Lcom/android/gallery3d/ui/TileImageView;->mModel:Lcom/android/gallery3d/ui/TileImageView$Model;
    invoke-static {v0}, Lcom/android/gallery3d/ui/TileImageView;->access$500(Lcom/android/gallery3d/ui/TileImageView;)Lcom/android/gallery3d/ui/TileImageView$Model;

    move-result-object v0

    iget v1, p0, Lcom/android/gallery3d/ui/TileImageView$Tile;->mTileLevel:I

    iget v2, p0, Lcom/android/gallery3d/ui/TileImageView$Tile;->mX:I

    iget v3, p0, Lcom/android/gallery3d/ui/TileImageView$Tile;->mY:I

    const/16 v4, 0xfe

    const/4 v5, 0x1

    invoke-static {}, Lcom/android/gallery3d/ui/TileImageView;->access$400()Lcom/android/gallery3d/data/BitmapPool;

    move-result-object v6

    invoke-interface/range {v0 .. v6}, Lcom/android/gallery3d/ui/TileImageView$Model;->getTile(IIIIILcom/android/gallery3d/data/BitmapPool;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0}, Lcom/android/gallery3d/data/DecodeUtils;->ensureGLCompatibleBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/ui/TileImageView$Tile;->mDecodedTile:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 715
    :goto_0
    iget-object v0, p0, Lcom/android/gallery3d/ui/TileImageView$Tile;->mDecodedTile:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    move v0, v8

    :goto_1
    return v0

    .line 712
    :catch_0
    move-exception v7

    .line 713
    .local v7, t:Ljava/lang/Throwable;
    const-string v0, "TileImageView"

    const-string v1, "fail to decode tile"

    invoke-static {v0, v1, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 715
    .end local v7           #t:Ljava/lang/Throwable;
    :cond_0
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public getParentTile()Lcom/android/gallery3d/ui/TileImageView$Tile;
    .locals 5

    .prologue
    .line 756
    iget v3, p0, Lcom/android/gallery3d/ui/TileImageView$Tile;->mTileLevel:I

    add-int/lit8 v3, v3, 0x1

    iget-object v4, p0, Lcom/android/gallery3d/ui/TileImageView$Tile;->this$0:Lcom/android/gallery3d/ui/TileImageView;

    iget v4, v4, Lcom/android/gallery3d/ui/TileImageView;->mLevelCount:I

    if-ne v3, v4, :cond_0

    const/4 v3, 0x0

    .line 760
    :goto_0
    return-object v3

    .line 757
    :cond_0
    const/16 v3, 0xfe

    iget v4, p0, Lcom/android/gallery3d/ui/TileImageView$Tile;->mTileLevel:I

    add-int/lit8 v4, v4, 0x1

    shl-int v0, v3, v4

    .line 758
    .local v0, size:I
    iget v3, p0, Lcom/android/gallery3d/ui/TileImageView$Tile;->mX:I

    div-int/2addr v3, v0

    mul-int v1, v0, v3

    .line 759
    .local v1, x:I
    iget v3, p0, Lcom/android/gallery3d/ui/TileImageView$Tile;->mY:I

    div-int/2addr v3, v0

    mul-int v2, v0, v3

    .line 760
    .local v2, y:I
    iget-object v3, p0, Lcom/android/gallery3d/ui/TileImageView$Tile;->this$0:Lcom/android/gallery3d/ui/TileImageView;

    iget v4, p0, Lcom/android/gallery3d/ui/TileImageView$Tile;->mTileLevel:I

    add-int/lit8 v4, v4, 0x1

    #calls: Lcom/android/gallery3d/ui/TileImageView;->getTile(III)Lcom/android/gallery3d/ui/TileImageView$Tile;
    invoke-static {v3, v1, v2, v4}, Lcom/android/gallery3d/ui/TileImageView;->access$600(Lcom/android/gallery3d/ui/TileImageView;III)Lcom/android/gallery3d/ui/TileImageView$Tile;

    move-result-object v3

    goto :goto_0
.end method

.method public getTextureHeight()I
    .locals 1

    .prologue
    .line 745
    const/16 v0, 0x100

    return v0
.end method

.method public getTextureWidth()I
    .locals 1

    .prologue
    .line 740
    const/16 v0, 0x100

    return v0
.end method

.method protected onFreeBitmap(Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "bitmap"

    .prologue
    .line 703
    invoke-static {}, Lcom/android/gallery3d/ui/TileImageView;->access$400()Lcom/android/gallery3d/data/BitmapPool;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/data/BitmapPool;->recycle(Landroid/graphics/Bitmap;)V

    .line 704
    return-void
.end method

.method protected onGetBitmap()Landroid/graphics/Bitmap;
    .locals 7

    .prologue
    const/16 v6, 0x100

    const/4 v4, 0x1

    .line 720
    iget v3, p0, Lcom/android/gallery3d/ui/TileImageView$Tile;->mTileState:I

    const/16 v5, 0x8

    if-ne v3, v5, :cond_0

    move v3, v4

    :goto_0
    invoke-static {v3}, Lcom/android/gallery3d/common/Utils;->assertTrue(Z)V

    .line 724
    iget-object v3, p0, Lcom/android/gallery3d/ui/TileImageView$Tile;->this$0:Lcom/android/gallery3d/ui/TileImageView;

    iget v3, v3, Lcom/android/gallery3d/ui/TileImageView;->mImageWidth:I

    iget v5, p0, Lcom/android/gallery3d/ui/TileImageView$Tile;->mX:I

    sub-int/2addr v3, v5

    iget v5, p0, Lcom/android/gallery3d/ui/TileImageView$Tile;->mTileLevel:I

    shr-int/2addr v3, v5

    add-int/lit8 v2, v3, 0x1

    .line 725
    .local v2, rightEdge:I
    iget-object v3, p0, Lcom/android/gallery3d/ui/TileImageView$Tile;->this$0:Lcom/android/gallery3d/ui/TileImageView;

    iget v3, v3, Lcom/android/gallery3d/ui/TileImageView;->mImageHeight:I

    iget v5, p0, Lcom/android/gallery3d/ui/TileImageView$Tile;->mY:I

    sub-int/2addr v3, v5

    iget v5, p0, Lcom/android/gallery3d/ui/TileImageView$Tile;->mTileLevel:I

    shr-int/2addr v3, v5

    add-int/lit8 v1, v3, 0x1

    .line 726
    .local v1, bottomEdge:I
    invoke-static {v6, v2}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v6, v1}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-virtual {p0, v3, v5}, Lcom/android/gallery3d/ui/BasicTexture;->setSize(II)V

    .line 728
    iget-object v0, p0, Lcom/android/gallery3d/ui/TileImageView$Tile;->mDecodedTile:Landroid/graphics/Bitmap;

    .line 729
    .local v0, bitmap:Landroid/graphics/Bitmap;
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/gallery3d/ui/TileImageView$Tile;->mDecodedTile:Landroid/graphics/Bitmap;

    .line 730
    iput v4, p0, Lcom/android/gallery3d/ui/TileImageView$Tile;->mTileState:I

    .line 731
    return-object v0

    .line 720
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v1           #bottomEdge:I
    .end local v2           #rightEdge:I
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 765
    const-string v0, "tile(%s, %s, %s / %s)"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/android/gallery3d/ui/TileImageView$Tile;->mX:I

    div-int/lit16 v3, v3, 0xfe

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lcom/android/gallery3d/ui/TileImageView$Tile;->mY:I

    div-int/lit16 v3, v3, 0xfe

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/android/gallery3d/ui/TileImageView$Tile;->this$0:Lcom/android/gallery3d/ui/TileImageView;

    #getter for: Lcom/android/gallery3d/ui/TileImageView;->mLevel:I
    invoke-static {v3}, Lcom/android/gallery3d/ui/TileImageView;->access$700(Lcom/android/gallery3d/ui/TileImageView;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/android/gallery3d/ui/TileImageView$Tile;->this$0:Lcom/android/gallery3d/ui/TileImageView;

    iget v3, v3, Lcom/android/gallery3d/ui/TileImageView;->mLevelCount:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public update(III)V
    .locals 0
    .parameter "x"
    .parameter "y"
    .parameter "level"

    .prologue
    .line 749
    iput p1, p0, Lcom/android/gallery3d/ui/TileImageView$Tile;->mX:I

    .line 750
    iput p2, p0, Lcom/android/gallery3d/ui/TileImageView$Tile;->mY:I

    .line 751
    iput p3, p0, Lcom/android/gallery3d/ui/TileImageView$Tile;->mTileLevel:I

    .line 752
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/UploadedTexture;->invalidateContent()V

    .line 753
    return-void
.end method
