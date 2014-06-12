.class Lcom/android/camera/ui/ProgressBarDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "ProgressBarDrawable.java"


# static fields
#the value of this static final field might be set in the static constructor
.field private static final LOG:Z = false

.field private static final TAG:Ljava/lang/String; = "ProgressBarDrawable"


# instance fields
.field private mAttachedView:Landroid/view/View;

.field private mBlockSizes:[I

.field private mCleanBlock:Landroid/graphics/drawable/Drawable;

.field private mDirtyBlock:Landroid/graphics/drawable/Drawable;

.field private mPadding:I

.field private final mPaint:Landroid/graphics/Paint;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 69
    sget-boolean v0, Lcom/android/camera/Log;->LOGV:Z

    sput-boolean v0, Lcom/android/camera/ui/ProgressBarDrawable;->LOG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;[II)V
    .locals 2
    .parameter "context"
    .parameter "view"
    .parameter "blockSizes"
    .parameter "padding"

    .prologue
    .line 77
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 73
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/camera/ui/ProgressBarDrawable;->mPaint:Landroid/graphics/Paint;

    .line 78
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 79
    .local v0, res:Landroid/content/res/Resources;
    iput-object p3, p0, Lcom/android/camera/ui/ProgressBarDrawable;->mBlockSizes:[I

    .line 80
    iput-object p2, p0, Lcom/android/camera/ui/ProgressBarDrawable;->mAttachedView:Landroid/view/View;

    .line 81
    iput p4, p0, Lcom/android/camera/ui/ProgressBarDrawable;->mPadding:I

    .line 82
    const v1, 0x7f0200bc

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/ui/ProgressBarDrawable;->mCleanBlock:Landroid/graphics/drawable/Drawable;

    .line 83
    const v1, 0x7f0200bd

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/ui/ProgressBarDrawable;->mDirtyBlock:Landroid/graphics/drawable/Drawable;

    .line 84
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 8
    .parameter "canvas"

    .prologue
    .line 122
    const/4 v3, 0x0

    .line 123
    .local v3, xoffset:I
    invoke-virtual {p0}, Lcom/android/camera/ui/ProgressBarDrawable;->getLevel()I

    move-result v2

    .line 125
    .local v2, level:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 126
    iget-object v5, p0, Lcom/android/camera/ui/ProgressBarDrawable;->mAttachedView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    iget-object v6, p0, Lcom/android/camera/ui/ProgressBarDrawable;->mBlockSizes:[I

    aget v6, v6, v0

    sub-int/2addr v5, v6

    div-int/lit8 v4, v5, 0x2

    .line 127
    .local v4, yoffset:I
    iget-object v5, p0, Lcom/android/camera/ui/ProgressBarDrawable;->mDirtyBlock:Landroid/graphics/drawable/Drawable;

    iget-object v6, p0, Lcom/android/camera/ui/ProgressBarDrawable;->mBlockSizes:[I

    aget v6, v6, v0

    add-int/2addr v6, v3

    iget-object v7, p0, Lcom/android/camera/ui/ProgressBarDrawable;->mBlockSizes:[I

    aget v7, v7, v0

    add-int/2addr v7, v4

    invoke-virtual {v5, v3, v4, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 128
    iget-object v5, p0, Lcom/android/camera/ui/ProgressBarDrawable;->mDirtyBlock:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 129
    sget-boolean v5, Lcom/android/camera/ui/ProgressBarDrawable;->LOG:Z

    if-eqz v5, :cond_0

    .line 130
    const-string v5, "ProgressBarDrawable"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "draw: i="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " xoffset = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " yoffset = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    :cond_0
    iget-object v5, p0, Lcom/android/camera/ui/ProgressBarDrawable;->mBlockSizes:[I

    aget v5, v5, v0

    iget v6, p0, Lcom/android/camera/ui/ProgressBarDrawable;->mPadding:I

    add-int/2addr v5, v6

    add-int/2addr v3, v5

    .line 125
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 136
    .end local v4           #yoffset:I
    :cond_1
    move v0, v2

    iget-object v5, p0, Lcom/android/camera/ui/ProgressBarDrawable;->mBlockSizes:[I

    array-length v1, v5

    .local v1, len:I
    :goto_1
    if-ge v0, v1, :cond_3

    .line 137
    iget-object v5, p0, Lcom/android/camera/ui/ProgressBarDrawable;->mAttachedView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    iget-object v6, p0, Lcom/android/camera/ui/ProgressBarDrawable;->mBlockSizes:[I

    aget v6, v6, v0

    sub-int/2addr v5, v6

    div-int/lit8 v4, v5, 0x2

    .line 138
    .restart local v4       #yoffset:I
    iget-object v5, p0, Lcom/android/camera/ui/ProgressBarDrawable;->mCleanBlock:Landroid/graphics/drawable/Drawable;

    iget-object v6, p0, Lcom/android/camera/ui/ProgressBarDrawable;->mBlockSizes:[I

    aget v6, v6, v0

    add-int/2addr v6, v3

    iget-object v7, p0, Lcom/android/camera/ui/ProgressBarDrawable;->mBlockSizes:[I

    aget v7, v7, v0

    add-int/2addr v7, v4

    invoke-virtual {v5, v3, v4, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 139
    iget-object v5, p0, Lcom/android/camera/ui/ProgressBarDrawable;->mCleanBlock:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 140
    sget-boolean v5, Lcom/android/camera/ui/ProgressBarDrawable;->LOG:Z

    if-eqz v5, :cond_2

    .line 141
    const-string v5, "ProgressBarDrawable"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "draw: i="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " xoffset = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " yoffset = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    :cond_2
    iget-object v5, p0, Lcom/android/camera/ui/ProgressBarDrawable;->mBlockSizes:[I

    aget v5, v5, v0

    iget v6, p0, Lcom/android/camera/ui/ProgressBarDrawable;->mPadding:I

    add-int/2addr v5, v6

    add-int/2addr v3, v5

    .line 136
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 145
    .end local v4           #yoffset:I
    :cond_3
    return-void
.end method

.method public getIntrinsicWidth()I
    .locals 6

    .prologue
    .line 97
    const/4 v2, 0x0

    .line 98
    .local v2, width:I
    const/4 v0, 0x0

    .local v0, i:I
    iget-object v3, p0, Lcom/android/camera/ui/ProgressBarDrawable;->mBlockSizes:[I

    array-length v1, v3

    .local v1, len:I
    :goto_0
    add-int/lit8 v3, v1, -0x1

    if-ge v0, v3, :cond_0

    .line 99
    iget-object v3, p0, Lcom/android/camera/ui/ProgressBarDrawable;->mBlockSizes:[I

    aget v3, v3, v0

    iget v4, p0, Lcom/android/camera/ui/ProgressBarDrawable;->mPadding:I

    add-int/2addr v3, v4

    add-int/2addr v2, v3

    .line 98
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 101
    :cond_0
    iget-object v3, p0, Lcom/android/camera/ui/ProgressBarDrawable;->mBlockSizes:[I

    iget-object v4, p0, Lcom/android/camera/ui/ProgressBarDrawable;->mBlockSizes:[I

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    aget v3, v3, v4

    add-int/2addr v2, v3

    .line 102
    sget-boolean v3, Lcom/android/camera/ui/ProgressBarDrawable;->LOG:Z

    if-eqz v3, :cond_1

    .line 103
    const-string v3, "ProgressBarDrawable"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getIntrinsicWidth: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    :cond_1
    return v2
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 114
    const/4 v0, -0x3

    return v0
.end method

.method protected onLevelChange(I)Z
    .locals 3
    .parameter "level"

    .prologue
    .line 88
    sget-boolean v0, Lcom/android/camera/ui/ProgressBarDrawable;->LOG:Z

    if-eqz v0, :cond_0

    .line 89
    const-string v0, "ProgressBarDrawable"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onLevelChange: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/ui/ProgressBarDrawable;->invalidateSelf()V

    .line 92
    const/4 v0, 0x1

    return v0
.end method

.method public setAlpha(I)V
    .locals 1
    .parameter "alpha"

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/camera/ui/ProgressBarDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 119
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .parameter "cf"

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/camera/ui/ProgressBarDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 111
    return-void
.end method
