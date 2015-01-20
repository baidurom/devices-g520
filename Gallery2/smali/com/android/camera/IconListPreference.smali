.class public Lcom/android/camera/IconListPreference;
.super Lcom/android/camera/ListPreference;
.source "IconListPreference.java"


# instance fields
.field private mIconIds:[I

.field private mOriginalIconIds:[I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v3, 0x0

    .line 32
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    sget-object v2, Lcom/android/camera/R$styleable;->IconListPreference:[I

    invoke-virtual {p1, p2, v2, v3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 35
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 36
    .local v1, res:Landroid/content/res/Resources;
    invoke-virtual {v0, v3, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/android/camera/IconListPreference;->getIds(Landroid/content/res/Resources;I)[I

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/IconListPreference;->mIconIds:[I

    .line 38
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 43
    iget-object v2, p0, Lcom/android/camera/IconListPreference;->mIconIds:[I

    iput-object v2, p0, Lcom/android/camera/IconListPreference;->mOriginalIconIds:[I

    .line 44
    return-void
.end method

.method private getIds(Landroid/content/res/Resources;I)[I
    .locals 5
    .parameter "res"
    .parameter "iconsRes"

    .prologue
    .line 55
    if-nez p2, :cond_0

    const/4 v2, 0x0

    .line 63
    :goto_0
    return-object v2

    .line 56
    :cond_0
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 57
    .local v0, array:Landroid/content/res/TypedArray;
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->length()I

    move-result v3

    .line 58
    .local v3, n:I
    new-array v2, v3, [I

    .line 59
    .local v2, ids:[I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v3, :cond_1

    .line 60
    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    aput v4, v2, v1

    .line 59
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 62
    :cond_1
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized filterUnsupported(Ljava/util/List;)V
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 68
    .local p1, supported:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/camera/ListPreference;->getOriginalEntryValues()[Ljava/lang/CharSequence;

    move-result-object v3

    .line 69
    .local v3, originalEntryValues:[Ljava/lang/CharSequence;
    new-instance v1, Lcom/android/camera/IntArray;

    invoke-direct {v1}, Lcom/android/camera/IntArray;-><init>()V

    .line 71
    .local v1, iconIds:Lcom/android/camera/IntArray;
    const/4 v0, 0x0

    .local v0, i:I
    array-length v2, v3

    .local v2, len:I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 72
    aget-object v4, v3, v0

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v4

    if-ltz v4, :cond_0

    .line 73
    iget-object v4, p0, Lcom/android/camera/IconListPreference;->mOriginalIconIds:[I

    if-eqz v4, :cond_0

    .line 74
    iget-object v4, p0, Lcom/android/camera/IconListPreference;->mOriginalIconIds:[I

    aget v4, v4, v0

    invoke-virtual {v1, v4}, Lcom/android/camera/IntArray;->add(I)V

    .line 71
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 78
    :cond_1
    iget-object v4, p0, Lcom/android/camera/IconListPreference;->mIconIds:[I

    if-eqz v4, :cond_2

    .line 79
    invoke-virtual {v1}, Lcom/android/camera/IntArray;->size()I

    move-result v4

    new-array v4, v4, [I

    invoke-virtual {v1, v4}, Lcom/android/camera/IntArray;->toArray([I)[I

    move-result-object v4

    iput-object v4, p0, Lcom/android/camera/IconListPreference;->mIconIds:[I

    .line 81
    :cond_2
    invoke-super {p0, p1}, Lcom/android/camera/ListPreference;->filterUnsupported(Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    monitor-exit p0

    return-void

    .line 68
    .end local v0           #i:I
    .end local v1           #iconIds:Lcom/android/camera/IntArray;
    .end local v2           #len:I
    .end local v3           #originalEntryValues:[Ljava/lang/CharSequence;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public getIconId(I)I
    .locals 1
    .parameter "index"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/camera/IconListPreference;->mIconIds:[I

    if-eqz v0, :cond_0

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/android/camera/IconListPreference;->mIconIds:[I

    array-length v0, v0

    if-lt p1, v0, :cond_1

    .line 87
    :cond_0
    invoke-super {p0, p1}, Lcom/android/camera/ListPreference;->getIconId(I)I

    move-result v0

    .line 89
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/android/camera/IconListPreference;->mIconIds:[I

    aget v0, v0, p1

    goto :goto_0
.end method

.method public getIconIds()[I
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/camera/IconListPreference;->mIconIds:[I

    return-object v0
.end method

.method public getOriginalIconIds()[I
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/camera/IconListPreference;->mOriginalIconIds:[I

    return-object v0
.end method

.method public setIconIds([I)V
    .locals 0
    .parameter "iconIds"

    .prologue
    .line 51
    iput-object p1, p0, Lcom/android/camera/IconListPreference;->mIconIds:[I

    .line 52
    return-void
.end method
