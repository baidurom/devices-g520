.class public Lcom/android/server/net/NetworkStatsRecorder$RemoveUidRewriter;
.super Ljava/lang/Object;
.source "NetworkStatsRecorder.java"

# interfaces
.implements Lcom/android/internal/util/FileRotator$Rewriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/net/NetworkStatsRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RemoveUidRewriter"
.end annotation


# instance fields
.field private final mTemp:Lcom/android/server/net/NetworkStatsCollection;

.field private final mUid:I


# direct methods
.method public constructor <init>(JI)V
    .locals 1
    .parameter "bucketDuration"
    .parameter "uid"

    .prologue
    .line 319
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 320
    new-instance v0, Lcom/android/server/net/NetworkStatsCollection;

    invoke-direct {v0, p1, p2}, Lcom/android/server/net/NetworkStatsCollection;-><init>(J)V

    iput-object v0, p0, Lcom/android/server/net/NetworkStatsRecorder$RemoveUidRewriter;->mTemp:Lcom/android/server/net/NetworkStatsCollection;

    .line 321
    iput p3, p0, Lcom/android/server/net/NetworkStatsRecorder$RemoveUidRewriter;->mUid:I

    .line 322
    return-void
.end method


# virtual methods
.method public read(Ljava/io/InputStream;)V
    .locals 2
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 331
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsRecorder$RemoveUidRewriter;->mTemp:Lcom/android/server/net/NetworkStatsCollection;

    invoke-virtual {v0, p1}, Lcom/android/server/net/NetworkStatsCollection;->read(Ljava/io/InputStream;)V

    .line 332
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsRecorder$RemoveUidRewriter;->mTemp:Lcom/android/server/net/NetworkStatsCollection;

    invoke-virtual {v0}, Lcom/android/server/net/NetworkStatsCollection;->clearDirty()V

    .line 333
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsRecorder$RemoveUidRewriter;->mTemp:Lcom/android/server/net/NetworkStatsCollection;

    iget v1, p0, Lcom/android/server/net/NetworkStatsRecorder$RemoveUidRewriter;->mUid:I

    invoke-virtual {v0, v1}, Lcom/android/server/net/NetworkStatsCollection;->removeUid(I)V

    .line 334
    return-void
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 326
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsRecorder$RemoveUidRewriter;->mTemp:Lcom/android/server/net/NetworkStatsCollection;

    invoke-virtual {v0}, Lcom/android/server/net/NetworkStatsCollection;->reset()V

    .line 327
    return-void
.end method

.method public shouldWrite()Z
    .locals 1

    .prologue
    .line 338
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsRecorder$RemoveUidRewriter;->mTemp:Lcom/android/server/net/NetworkStatsCollection;

    invoke-virtual {v0}, Lcom/android/server/net/NetworkStatsCollection;->isDirty()Z

    move-result v0

    return v0
.end method

.method public write(Ljava/io/OutputStream;)V
    .locals 2
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 343
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsRecorder$RemoveUidRewriter;->mTemp:Lcom/android/server/net/NetworkStatsCollection;

    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, p1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v0, v1}, Lcom/android/server/net/NetworkStatsCollection;->write(Ljava/io/DataOutputStream;)V

    .line 344
    return-void
.end method