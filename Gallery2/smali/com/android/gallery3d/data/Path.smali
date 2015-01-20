.class public Lcom/android/gallery3d/data/Path;
.super Ljava/lang/Object;
.source "Path.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Path"

.field private static sRoot:Lcom/android/gallery3d/data/Path;


# instance fields
.field private mChildren:Lcom/android/gallery3d/util/IdentityCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/gallery3d/util/IdentityCache",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/gallery3d/data/Path;",
            ">;"
        }
    .end annotation
.end field

.field private mMtkInclusion:I

.field private mObject:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/gallery3d/data/MediaObject;",
            ">;"
        }
    .end annotation
.end field

.field private final mParent:Lcom/android/gallery3d/data/Path;

.field private final mSegment:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 27
    new-instance v0, Lcom/android/gallery3d/data/Path;

    const/4 v1, 0x0

    const-string v2, "ROOT"

    invoke-direct {v0, v1, v2}, Lcom/android/gallery3d/data/Path;-><init>(Lcom/android/gallery3d/data/Path;Ljava/lang/String;)V

    sput-object v0, Lcom/android/gallery3d/data/Path;->sRoot:Lcom/android/gallery3d/data/Path;

    return-void
.end method

.method private constructor <init>(Lcom/android/gallery3d/data/Path;Ljava/lang/String;)V
    .locals 0
    .parameter "parent"
    .parameter "segment"

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object p1, p0, Lcom/android/gallery3d/data/Path;->mParent:Lcom/android/gallery3d/data/Path;

    .line 68
    iput-object p2, p0, Lcom/android/gallery3d/data/Path;->mSegment:Ljava/lang/String;

    .line 69
    return-void
.end method

.method static clearAll()V
    .locals 4

    .prologue
    .line 285
    const-class v1, Lcom/android/gallery3d/data/Path;

    monitor-enter v1

    .line 286
    :try_start_0
    new-instance v0, Lcom/android/gallery3d/data/Path;

    const/4 v2, 0x0

    const-string v3, ""

    invoke-direct {v0, v2, v3}, Lcom/android/gallery3d/data/Path;-><init>(Lcom/android/gallery3d/data/Path;Ljava/lang/String;)V

    sput-object v0, Lcom/android/gallery3d/data/Path;->sRoot:Lcom/android/gallery3d/data/Path;

    .line 287
    monitor-exit v1

    .line 288
    return-void

    .line 287
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static dumpAll()V
    .locals 3

    .prologue
    .line 291
    sget-object v0, Lcom/android/gallery3d/data/Path;->sRoot:Lcom/android/gallery3d/data/Path;

    const-string v1, ""

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/android/gallery3d/data/Path;->dumpAll(Lcom/android/gallery3d/data/Path;Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    return-void
.end method

.method static dumpAll(Lcom/android/gallery3d/data/Path;Ljava/lang/String;Ljava/lang/String;)V
    .locals 11
    .parameter "p"
    .parameter "prefix1"
    .parameter "prefix2"

    .prologue
    .line 295
    const-class v8, Lcom/android/gallery3d/data/Path;

    monitor-enter v8

    .line 296
    :try_start_0
    invoke-virtual {p0}, Lcom/android/gallery3d/data/Path;->getObject()Lcom/android/gallery3d/data/MediaObject;

    move-result-object v6

    .line 297
    .local v6, obj:Lcom/android/gallery3d/data/MediaObject;
    const-string v9, "Path"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v10, p0, Lcom/android/gallery3d/data/Path;->mSegment:Ljava/lang/String;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, ":"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    if-nez v6, :cond_0

    const-string v7, "null"

    :goto_0
    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v9, v7}, Lcom/android/gallery3d/data/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    iget-object v7, p0, Lcom/android/gallery3d/data/Path;->mChildren:Lcom/android/gallery3d/util/IdentityCache;

    if-eqz v7, :cond_3

    .line 300
    iget-object v7, p0, Lcom/android/gallery3d/data/Path;->mChildren:Lcom/android/gallery3d/util/IdentityCache;

    invoke-virtual {v7}, Lcom/android/gallery3d/util/IdentityCache;->keys()Ljava/util/ArrayList;

    move-result-object v1

    .line 301
    .local v1, childrenKeys:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .local v2, i:I
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 302
    .local v5, n:I
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 303
    .local v4, key:Ljava/lang/String;
    iget-object v7, p0, Lcom/android/gallery3d/data/Path;->mChildren:Lcom/android/gallery3d/util/IdentityCache;

    invoke-virtual {v7, v4}, Lcom/android/gallery3d/util/IdentityCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/data/Path;

    .line 304
    .local v0, child:Lcom/android/gallery3d/data/Path;
    if-nez v0, :cond_1

    .line 305
    add-int/lit8 v2, v2, 0x1

    .line 306
    goto :goto_1

    .line 297
    .end local v0           #child:Lcom/android/gallery3d/data/Path;
    .end local v1           #childrenKeys:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v2           #i:I
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #key:Ljava/lang/String;
    .end local v5           #n:I
    :cond_0
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    .line 308
    .restart local v0       #child:Lcom/android/gallery3d/data/Path;
    .restart local v1       #childrenKeys:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v2       #i:I
    .restart local v3       #i$:Ljava/util/Iterator;
    .restart local v4       #key:Ljava/lang/String;
    .restart local v5       #n:I
    :cond_1
    const-string v7, "Path"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "|"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Lcom/android/gallery3d/data/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    add-int/lit8 v2, v2, 0x1

    if-ge v2, v5, :cond_2

    .line 310
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, "+-- "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "|   "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v7, v9}, Lcom/android/gallery3d/data/Path;->dumpAll(Lcom/android/gallery3d/data/Path;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 316
    .end local v0           #child:Lcom/android/gallery3d/data/Path;
    .end local v1           #childrenKeys:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v2           #i:I
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #key:Ljava/lang/String;
    .end local v5           #n:I
    .end local v6           #obj:Lcom/android/gallery3d/data/MediaObject;
    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7

    .line 312
    .restart local v0       #child:Lcom/android/gallery3d/data/Path;
    .restart local v1       #childrenKeys:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v2       #i:I
    .restart local v3       #i$:Ljava/util/Iterator;
    .restart local v4       #key:Ljava/lang/String;
    .restart local v5       #n:I
    .restart local v6       #obj:Lcom/android/gallery3d/data/MediaObject;
    :cond_2
    :try_start_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, "+-- "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "    "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v7, v9}, Lcom/android/gallery3d/data/Path;->dumpAll(Lcom/android/gallery3d/data/Path;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 316
    .end local v0           #child:Lcom/android/gallery3d/data/Path;
    .end local v1           #childrenKeys:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v2           #i:I
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #key:Ljava/lang/String;
    .end local v5           #n:I
    :cond_3
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 317
    return-void
.end method

.method public static fromString(Ljava/lang/String;)Lcom/android/gallery3d/data/Path;
    .locals 6
    .parameter "s"

    .prologue
    .line 161
    const-class v4, Lcom/android/gallery3d/data/Path;

    monitor-enter v4

    .line 165
    :try_start_0
    sget-object v3, Lcom/android/gallery3d/data/Path;->sRoot:Lcom/android/gallery3d/data/Path;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Lcom/android/gallery3d/data/Path;->setMtkInclusion(I)V

    .line 167
    invoke-static {p0}, Lcom/android/gallery3d/data/Path;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 168
    .local v2, segments:[Ljava/lang/String;
    sget-object v0, Lcom/android/gallery3d/data/Path;->sRoot:Lcom/android/gallery3d/data/Path;

    .line 169
    .local v0, current:Lcom/android/gallery3d/data/Path;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 170
    aget-object v3, v2, v1

    invoke-virtual {v0, v3}, Lcom/android/gallery3d/data/Path;->getChild(Ljava/lang/String;)Lcom/android/gallery3d/data/Path;

    move-result-object v0

    .line 169
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 172
    :cond_0
    monitor-exit v4

    return-object v0

    .line 173
    .end local v0           #current:Lcom/android/gallery3d/data/Path;
    .end local v1           #i:I
    .end local v2           #segments:[Ljava/lang/String;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public static fromString(Ljava/lang/String;I)Lcom/android/gallery3d/data/Path;
    .locals 5
    .parameter "s"
    .parameter "mtkInclusion"

    .prologue
    .line 177
    const-class v4, Lcom/android/gallery3d/data/Path;

    monitor-enter v4

    .line 178
    :try_start_0
    invoke-static {p0}, Lcom/android/gallery3d/data/Path;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 179
    .local v2, segments:[Ljava/lang/String;
    sget-object v0, Lcom/android/gallery3d/data/Path;->sRoot:Lcom/android/gallery3d/data/Path;

    .line 180
    .local v0, current:Lcom/android/gallery3d/data/Path;
    sget-object v3, Lcom/android/gallery3d/data/Path;->sRoot:Lcom/android/gallery3d/data/Path;

    invoke-virtual {v3, p1}, Lcom/android/gallery3d/data/Path;->setMtkInclusion(I)V

    .line 181
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 182
    aget-object v3, v2, v1

    invoke-virtual {v0, v3, p1}, Lcom/android/gallery3d/data/Path;->getChild(Ljava/lang/String;I)Lcom/android/gallery3d/data/Path;

    move-result-object v0

    .line 181
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 184
    :cond_0
    monitor-exit v4

    return-object v0

    .line 185
    .end local v0           #current:Lcom/android/gallery3d/data/Path;
    .end local v1           #i:I
    .end local v2           #segments:[Ljava/lang/String;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public static split(Ljava/lang/String;)[Ljava/lang/String;
    .locals 10
    .parameter "s"

    .prologue
    const/16 v8, 0x2f

    const/4 v7, 0x0

    .line 204
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    .line 205
    .local v4, n:I
    if-nez v4, :cond_0

    new-array v5, v7, [Ljava/lang/String;

    .line 228
    :goto_0
    return-object v5

    .line 206
    :cond_0
    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-eq v7, v8, :cond_1

    .line 207
    new-instance v7, Ljava/lang/RuntimeException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "malformed path:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 209
    :cond_1
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 210
    .local v6, segments:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v2, 0x1

    .line 211
    .local v2, i:I
    :goto_1
    if-ge v2, v4, :cond_7

    .line 212
    const/4 v0, 0x0

    .line 214
    .local v0, brace:I
    move v3, v2

    .local v3, j:I
    :goto_2
    if-ge v3, v4, :cond_5

    .line 215
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 216
    .local v1, c:C
    const/16 v7, 0x7b

    if-ne v1, v7, :cond_3

    add-int/lit8 v0, v0, 0x1

    .line 214
    :cond_2
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 217
    :cond_3
    const/16 v7, 0x7d

    if-ne v1, v7, :cond_4

    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    .line 218
    :cond_4
    if-nez v0, :cond_2

    if-ne v1, v8, :cond_2

    .line 220
    .end local v1           #c:C
    :cond_5
    if-eqz v0, :cond_6

    .line 221
    new-instance v7, Ljava/lang/RuntimeException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "unbalanced brace in path:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 223
    :cond_6
    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 224
    add-int/lit8 v2, v3, 0x1

    .line 225
    goto :goto_1

    .line 226
    .end local v0           #brace:I
    .end local v3           #j:I
    :cond_7
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v5, v7, [Ljava/lang/String;

    .line 227
    .local v5, result:[Ljava/lang/String;
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    goto :goto_0
.end method

.method public static splitSequence(Ljava/lang/String;)[Ljava/lang/String;
    .locals 10
    .parameter "s"

    .prologue
    const/16 v9, 0x7d

    const/16 v8, 0x7b

    .line 234
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    .line 235
    .local v4, n:I
    const/4 v7, 0x0

    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-ne v7, v8, :cond_0

    add-int/lit8 v7, v4, -0x1

    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-eq v7, v9, :cond_1

    .line 236
    :cond_0
    new-instance v7, Ljava/lang/RuntimeException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "bad sequence: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 238
    :cond_1
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 239
    .local v6, segments:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v2, 0x1

    .line 240
    .local v2, i:I
    :goto_0
    add-int/lit8 v7, v4, -0x1

    if-ge v2, v7, :cond_7

    .line 241
    const/4 v0, 0x0

    .line 243
    .local v0, brace:I
    move v3, v2

    .local v3, j:I
    :goto_1
    add-int/lit8 v7, v4, -0x1

    if-ge v3, v7, :cond_5

    .line 244
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 245
    .local v1, c:C
    if-ne v1, v8, :cond_3

    add-int/lit8 v0, v0, 0x1

    .line 243
    :cond_2
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 246
    :cond_3
    if-ne v1, v9, :cond_4

    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 247
    :cond_4
    if-nez v0, :cond_2

    const/16 v7, 0x2c

    if-ne v1, v7, :cond_2

    .line 249
    .end local v1           #c:C
    :cond_5
    if-eqz v0, :cond_6

    .line 250
    new-instance v7, Ljava/lang/RuntimeException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "unbalanced brace in path:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 252
    :cond_6
    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 253
    add-int/lit8 v2, v3, 0x1

    .line 254
    goto :goto_0

    .line 255
    .end local v0           #brace:I
    .end local v3           #j:I
    :cond_7
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v5, v7, [Ljava/lang/String;

    .line 256
    .local v5, result:[Ljava/lang/String;
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 257
    return-object v5
.end method


# virtual methods
.method public getChild(I)Lcom/android/gallery3d/data/Path;
    .locals 1
    .parameter "segment"

    .prologue
    .line 119
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/data/Path;->getChild(Ljava/lang/String;)Lcom/android/gallery3d/data/Path;

    move-result-object v0

    return-object v0
.end method

.method public getChild(II)Lcom/android/gallery3d/data/Path;
    .locals 1
    .parameter "segment"
    .parameter "mtkInclusion"

    .prologue
    .line 123
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/android/gallery3d/data/Path;->getChild(Ljava/lang/String;I)Lcom/android/gallery3d/data/Path;

    move-result-object v0

    return-object v0
.end method

.method public getChild(J)Lcom/android/gallery3d/data/Path;
    .locals 1
    .parameter "segment"

    .prologue
    .line 127
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/data/Path;->getChild(Ljava/lang/String;)Lcom/android/gallery3d/data/Path;

    move-result-object v0

    return-object v0
.end method

.method public getChild(JI)Lcom/android/gallery3d/data/Path;
    .locals 1
    .parameter "segment"
    .parameter "mtkInclusion"

    .prologue
    .line 131
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p3}, Lcom/android/gallery3d/data/Path;->getChild(Ljava/lang/String;I)Lcom/android/gallery3d/data/Path;

    move-result-object v0

    return-object v0
.end method

.method public getChild(Ljava/lang/String;)Lcom/android/gallery3d/data/Path;
    .locals 5
    .parameter "segment"

    .prologue
    .line 72
    move-object v2, p1

    .line 73
    .local v2, segmentExt:Ljava/lang/String;
    invoke-static {}, Lcom/mediatek/gallery3d/util/MediatekFeature;->isDrmSupported()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 74
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "|"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/gallery3d/data/Path;->mMtkInclusion:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 76
    :cond_0
    const-class v4, Lcom/android/gallery3d/data/Path;

    monitor-enter v4

    .line 77
    :try_start_0
    iget-object v3, p0, Lcom/android/gallery3d/data/Path;->mChildren:Lcom/android/gallery3d/util/IdentityCache;

    if-nez v3, :cond_2

    .line 78
    new-instance v3, Lcom/android/gallery3d/util/IdentityCache;

    invoke-direct {v3}, Lcom/android/gallery3d/util/IdentityCache;-><init>()V

    iput-object v3, p0, Lcom/android/gallery3d/data/Path;->mChildren:Lcom/android/gallery3d/util/IdentityCache;

    .line 84
    :cond_1
    new-instance v0, Lcom/android/gallery3d/data/Path;

    invoke-direct {v0, p0, p1}, Lcom/android/gallery3d/data/Path;-><init>(Lcom/android/gallery3d/data/Path;Ljava/lang/String;)V

    .line 85
    .local v0, p:Lcom/android/gallery3d/data/Path;
    iget-object v3, p0, Lcom/android/gallery3d/data/Path;->mChildren:Lcom/android/gallery3d/util/IdentityCache;

    invoke-virtual {v3, v2, v0}, Lcom/android/gallery3d/util/IdentityCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    monitor-exit v4

    move-object v1, v0

    .end local v0           #p:Lcom/android/gallery3d/data/Path;
    .local v1, p:Ljava/lang/Object;
    :goto_0
    return-object v1

    .line 80
    .end local v1           #p:Ljava/lang/Object;
    :cond_2
    iget-object v3, p0, Lcom/android/gallery3d/data/Path;->mChildren:Lcom/android/gallery3d/util/IdentityCache;

    invoke-virtual {v3, v2}, Lcom/android/gallery3d/util/IdentityCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/data/Path;

    .line 81
    .restart local v0       #p:Lcom/android/gallery3d/data/Path;
    if-eqz v0, :cond_1

    monitor-exit v4

    move-object v1, v0

    .restart local v1       #p:Ljava/lang/Object;
    goto :goto_0

    .line 87
    .end local v0           #p:Lcom/android/gallery3d/data/Path;
    .end local v1           #p:Ljava/lang/Object;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public getChild(Ljava/lang/String;I)Lcom/android/gallery3d/data/Path;
    .locals 5
    .parameter "segment"
    .parameter "mtkInclusion"

    .prologue
    .line 91
    move-object v2, p1

    .line 92
    .local v2, segmentExt:Ljava/lang/String;
    invoke-static {}, Lcom/mediatek/gallery3d/util/MediatekFeature;->isDrmSupported()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 93
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "|"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 95
    :cond_0
    const-class v4, Lcom/android/gallery3d/data/Path;

    monitor-enter v4

    .line 96
    :try_start_0
    iget-object v3, p0, Lcom/android/gallery3d/data/Path;->mChildren:Lcom/android/gallery3d/util/IdentityCache;

    if-nez v3, :cond_2

    .line 97
    new-instance v3, Lcom/android/gallery3d/util/IdentityCache;

    invoke-direct {v3}, Lcom/android/gallery3d/util/IdentityCache;-><init>()V

    iput-object v3, p0, Lcom/android/gallery3d/data/Path;->mChildren:Lcom/android/gallery3d/util/IdentityCache;

    .line 105
    :cond_1
    new-instance v0, Lcom/android/gallery3d/data/Path;

    invoke-direct {v0, p0, p1}, Lcom/android/gallery3d/data/Path;-><init>(Lcom/android/gallery3d/data/Path;Ljava/lang/String;)V

    .line 106
    .local v0, p:Lcom/android/gallery3d/data/Path;
    invoke-virtual {v0, p2}, Lcom/android/gallery3d/data/Path;->setMtkInclusion(I)V

    .line 107
    iget-object v3, p0, Lcom/android/gallery3d/data/Path;->mChildren:Lcom/android/gallery3d/util/IdentityCache;

    invoke-virtual {v3, v2, v0}, Lcom/android/gallery3d/util/IdentityCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    monitor-exit v4

    move-object v1, v0

    .end local v0           #p:Lcom/android/gallery3d/data/Path;
    .local v1, p:Ljava/lang/Object;
    :goto_0
    return-object v1

    .line 99
    .end local v1           #p:Ljava/lang/Object;
    :cond_2
    iget-object v3, p0, Lcom/android/gallery3d/data/Path;->mChildren:Lcom/android/gallery3d/util/IdentityCache;

    invoke-virtual {v3, v2}, Lcom/android/gallery3d/util/IdentityCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/data/Path;

    .line 100
    .restart local v0       #p:Lcom/android/gallery3d/data/Path;
    if-eqz v0, :cond_1

    .line 101
    monitor-exit v4

    move-object v1, v0

    .restart local v1       #p:Ljava/lang/Object;
    goto :goto_0

    .line 109
    .end local v0           #p:Lcom/android/gallery3d/data/Path;
    .end local v1           #p:Ljava/lang/Object;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public getMtkInclusion()I
    .locals 2

    .prologue
    .line 50
    const-class v1, Lcom/android/gallery3d/data/Path;

    monitor-enter v1

    .line 51
    :try_start_0
    iget v0, p0, Lcom/android/gallery3d/data/Path;->mMtkInclusion:I

    monitor-exit v1

    return v0

    .line 52
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getObject()Lcom/android/gallery3d/data/MediaObject;
    .locals 2

    .prologue
    .line 142
    const-class v1, Lcom/android/gallery3d/data/Path;

    monitor-enter v1

    .line 143
    :try_start_0
    iget-object v0, p0, Lcom/android/gallery3d/data/Path;->mObject:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    monitor-exit v1

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/data/Path;->mObject:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/data/MediaObject;

    goto :goto_0

    .line 144
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getParent()Lcom/android/gallery3d/data/Path;
    .locals 2

    .prologue
    .line 113
    const-class v1, Lcom/android/gallery3d/data/Path;

    monitor-enter v1

    .line 114
    :try_start_0
    iget-object v0, p0, Lcom/android/gallery3d/data/Path;->mParent:Lcom/android/gallery3d/data/Path;

    monitor-exit v1

    return-object v0

    .line 115
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getPrefix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 261
    sget-object v0, Lcom/android/gallery3d/data/Path;->sRoot:Lcom/android/gallery3d/data/Path;

    if-ne p0, v0, :cond_0

    const-string v0, ""

    .line 262
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/gallery3d/data/Path;->getPrefixPath()Lcom/android/gallery3d/data/Path;

    move-result-object v0

    iget-object v0, v0, Lcom/android/gallery3d/data/Path;->mSegment:Ljava/lang/String;

    goto :goto_0
.end method

.method public getPrefixPath()Lcom/android/gallery3d/data/Path;
    .locals 4

    .prologue
    .line 266
    const-class v2, Lcom/android/gallery3d/data/Path;

    monitor-enter v2

    .line 267
    move-object v0, p0

    .line 268
    .local v0, current:Lcom/android/gallery3d/data/Path;
    :try_start_0
    sget-object v1, Lcom/android/gallery3d/data/Path;->sRoot:Lcom/android/gallery3d/data/Path;

    if-ne v0, v1, :cond_0

    .line 269
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    .line 275
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 271
    :cond_0
    :goto_0
    :try_start_1
    iget-object v1, v0, Lcom/android/gallery3d/data/Path;->mParent:Lcom/android/gallery3d/data/Path;

    sget-object v3, Lcom/android/gallery3d/data/Path;->sRoot:Lcom/android/gallery3d/data/Path;

    if-eq v1, v3, :cond_1

    .line 272
    iget-object v0, v0, Lcom/android/gallery3d/data/Path;->mParent:Lcom/android/gallery3d/data/Path;

    goto :goto_0

    .line 274
    :cond_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v0
.end method

.method public getSuffix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 280
    iget-object v0, p0, Lcom/android/gallery3d/data/Path;->mSegment:Ljava/lang/String;

    return-object v0
.end method

.method public setMtkInclusion(I)V
    .locals 3
    .parameter "mtkInclusion"

    .prologue
    .line 55
    const-class v2, Lcom/android/gallery3d/data/Path;

    monitor-enter v2

    .line 56
    move-object v0, p0

    .line 57
    .local v0, current:Lcom/android/gallery3d/data/Path;
    :try_start_0
    sget-object v1, Lcom/android/gallery3d/data/Path;->sRoot:Lcom/android/gallery3d/data/Path;

    if-ne v0, v1, :cond_0

    .line 58
    monitor-exit v2

    .line 61
    :goto_0
    return-void

    .line 60
    :cond_0
    iput p1, p0, Lcom/android/gallery3d/data/Path;->mMtkInclusion:I

    .line 61
    monitor-exit v2

    goto :goto_0

    .line 62
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setObject(Lcom/android/gallery3d/data/MediaObject;)V
    .locals 2
    .parameter "object"

    .prologue
    .line 135
    const-class v1, Lcom/android/gallery3d/data/Path;

    monitor-enter v1

    .line 136
    :try_start_0
    iget-object v0, p0, Lcom/android/gallery3d/data/Path;->mObject:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/data/Path;->mObject:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/android/gallery3d/common/Utils;->assertTrue(Z)V

    .line 137
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/gallery3d/data/Path;->mObject:Ljava/lang/ref/WeakReference;

    .line 138
    monitor-exit v1

    .line 139
    return-void

    .line 136
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 138
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public split()[Ljava/lang/String;
    .locals 7

    .prologue
    .line 189
    const-class v6, Lcom/android/gallery3d/data/Path;

    monitor-enter v6

    .line 190
    const/4 v2, 0x0

    .line 191
    .local v2, n:I
    move-object v3, p0

    .local v3, p:Lcom/android/gallery3d/data/Path;
    :goto_0
    :try_start_0
    sget-object v5, Lcom/android/gallery3d/data/Path;->sRoot:Lcom/android/gallery3d/data/Path;

    if-eq v3, v5, :cond_0

    .line 192
    add-int/lit8 v2, v2, 0x1

    .line 191
    iget-object v3, v3, Lcom/android/gallery3d/data/Path;->mParent:Lcom/android/gallery3d/data/Path;

    goto :goto_0

    .line 194
    :cond_0
    new-array v4, v2, [Ljava/lang/String;

    .line 195
    .local v4, segments:[Ljava/lang/String;
    add-int/lit8 v0, v2, -0x1

    .line 196
    .local v0, i:I
    move-object v3, p0

    move v1, v0

    .end local v0           #i:I
    .local v1, i:I
    :goto_1
    sget-object v5, Lcom/android/gallery3d/data/Path;->sRoot:Lcom/android/gallery3d/data/Path;

    if-eq v3, v5, :cond_1

    .line 197
    add-int/lit8 v0, v1, -0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    iget-object v5, v3, Lcom/android/gallery3d/data/Path;->mSegment:Ljava/lang/String;

    aput-object v5, v4, v1

    .line 196
    iget-object v3, v3, Lcom/android/gallery3d/data/Path;->mParent:Lcom/android/gallery3d/data/Path;

    move v1, v0

    .end local v0           #i:I
    .restart local v1       #i:I
    goto :goto_1

    .line 199
    :cond_1
    monitor-exit v6

    return-object v4

    .line 200
    .end local v1           #i:I
    .end local v4           #segments:[Ljava/lang/String;
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 149
    const-class v4, Lcom/android/gallery3d/data/Path;

    monitor-enter v4

    .line 150
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 151
    .local v1, sb:Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lcom/android/gallery3d/data/Path;->split()[Ljava/lang/String;

    move-result-object v2

    .line 152
    .local v2, segments:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_0

    .line 153
    const-string v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    aget-object v3, v2, v0

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 156
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    monitor-exit v4

    return-object v3

    .line 157
    .end local v0           #i:I
    .end local v1           #sb:Ljava/lang/StringBuilder;
    .end local v2           #segments:[Ljava/lang/String;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method
