.class Lcom/android/gallery3d/app/BookmarkerInfo;
.super Ljava/lang/Object;
.source "MoviePlayer.java"


# instance fields
.field public final mBookmark:I

.field public final mDuration:I


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .parameter "bookmark"
    .parameter "duration"

    .prologue
    .line 1794
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1795
    iput p1, p0, Lcom/android/gallery3d/app/BookmarkerInfo;->mBookmark:I

    .line 1796
    iput p2, p0, Lcom/android/gallery3d/app/BookmarkerInfo;->mDuration:I

    .line 1797
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1801
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BookmarkInfo(bookmark="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/gallery3d/app/BookmarkerInfo;->mBookmark:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", duration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/gallery3d/app/BookmarkerInfo;->mDuration:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
