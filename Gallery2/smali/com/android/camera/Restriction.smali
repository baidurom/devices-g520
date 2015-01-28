.class public Lcom/android/camera/Restriction;
.super Ljava/lang/Object;
.source "Restriction.java"


# static fields
#the value of this static final field might be set in the static constructor
.field private static final LOG:Z = false

.field private static final TAG:Ljava/lang/String; = "Restriction"

.field public static final TYPE_MODE:I = 0x1

.field public static final TYPE_SETTING:I


# instance fields
.field private mEnable:Z

.field private mMappingValues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mRestrictions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/Restriction;",
            ">;"
        }
    .end annotation
.end field

.field private final mSettingIndex:I

.field private mType:I

.field private mValues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 8
    sget-boolean v0, Lcom/android/camera/Log;->LOGV:Z

    sput-boolean v0, Lcom/android/camera/Restriction;->LOG:Z

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .parameter "index"

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/Restriction;->mEnable:Z

    .line 16
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/Restriction;->mType:I

    .line 20
    iput p1, p0, Lcom/android/camera/Restriction;->mSettingIndex:I

    .line 21
    return-void
.end method


# virtual methods
.method public findMappingIndex(Ljava/lang/String;)I
    .locals 6
    .parameter "value"

    .prologue
    .line 40
    const/4 v0, -0x1

    .line 41
    .local v0, find:I
    iget-object v3, p0, Lcom/android/camera/Restriction;->mMappingValues:Ljava/util/List;

    if-eqz v3, :cond_0

    if-eqz p1, :cond_0

    .line 42
    iget-object v3, p0, Lcom/android/camera/Restriction;->mMappingValues:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .line 43
    .local v2, len:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 44
    iget-object v3, p0, Lcom/android/camera/Restriction;->mMappingValues:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 45
    move v0, v1

    .line 50
    .end local v1           #i:I
    .end local v2           #len:I
    :cond_0
    sget-boolean v3, Lcom/android/camera/Restriction;->LOG:Z

    if-eqz v3, :cond_1

    .line 51
    const-string v3, "Restriction"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "findMappingIndex("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") return "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    :cond_1
    return v0

    .line 43
    .restart local v1       #i:I
    .restart local v2       #len:I
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public getEnable()Z
    .locals 1

    .prologue
    .line 32
    iget-boolean v0, p0, Lcom/android/camera/Restriction;->mEnable:Z

    return v0
.end method

.method public getIndex()I
    .locals 1

    .prologue
    .line 28
    iget v0, p0, Lcom/android/camera/Restriction;->mSettingIndex:I

    return v0
.end method

.method public getRestrictioins()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/Restriction;",
            ">;"
        }
    .end annotation

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/camera/Restriction;->mRestrictions:Ljava/util/List;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 24
    iget v0, p0, Lcom/android/camera/Restriction;->mType:I

    return v0
.end method

.method public getValues()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/camera/Restriction;->mValues:Ljava/util/List;

    return-object v0
.end method

.method public setEnable(Z)Lcom/android/camera/Restriction;
    .locals 0
    .parameter "enable"

    .prologue
    .line 61
    iput-boolean p1, p0, Lcom/android/camera/Restriction;->mEnable:Z

    .line 62
    return-object p0
.end method

.method public varargs setMappingValues([Ljava/lang/String;)Lcom/android/camera/Restriction;
    .locals 5
    .parameter "values"

    .prologue
    .line 81
    if-eqz p1, :cond_0

    .line 82
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/camera/Restriction;->mMappingValues:Ljava/util/List;

    .line 83
    move-object v0, p1

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 84
    .local v3, value:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/camera/Restriction;->mMappingValues:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 83
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 87
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #i$:I
    .end local v2           #len$:I
    .end local v3           #value:Ljava/lang/String;
    :cond_0
    return-object p0
.end method

.method public varargs setRestrictions([Lcom/android/camera/Restriction;)Lcom/android/camera/Restriction;
    .locals 5
    .parameter "restrictions"

    .prologue
    .line 91
    if-eqz p1, :cond_0

    .line 92
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/camera/Restriction;->mRestrictions:Ljava/util/List;

    .line 93
    move-object v0, p1

    .local v0, arr$:[Lcom/android/camera/Restriction;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 94
    .local v3, value:Lcom/android/camera/Restriction;
    iget-object v4, p0, Lcom/android/camera/Restriction;->mRestrictions:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 93
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 97
    .end local v0           #arr$:[Lcom/android/camera/Restriction;
    .end local v1           #i$:I
    .end local v2           #len$:I
    .end local v3           #value:Lcom/android/camera/Restriction;
    :cond_0
    return-object p0
.end method

.method public setType(I)Lcom/android/camera/Restriction;
    .locals 0
    .parameter "type"

    .prologue
    .line 66
    iput p1, p0, Lcom/android/camera/Restriction;->mType:I

    .line 67
    return-object p0
.end method

.method public varargs setValues([Ljava/lang/String;)Lcom/android/camera/Restriction;
    .locals 5
    .parameter "values"

    .prologue
    .line 71
    if-eqz p1, :cond_0

    .line 72
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/camera/Restriction;->mValues:Ljava/util/List;

    .line 73
    move-object v0, p1

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 74
    .local v3, value:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/camera/Restriction;->mValues:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 73
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 77
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #i$:I
    .end local v2           #len$:I
    .end local v3           #value:Ljava/lang/String;
    :cond_0
    return-object p0
.end method
