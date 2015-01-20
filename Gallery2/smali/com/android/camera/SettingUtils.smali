.class public Lcom/android/camera/SettingUtils;
.super Ljava/lang/Object;
.source "SettingUtils.java"


# static fields
.field private static final ALPHA_DISABLE:F = 0.3f

.field private static final ALPHA_ENABLE:F = 1.0f

.field private static final ENABLE_LIST_HEAD:Ljava/lang/String; = "[L];"

.field private static final ENABLE_LIST_SEPERATOR:Ljava/lang/String; = ";"

#the value of this static final field might be set in the static constructor
.field private static final LOG:Z = false

.field public static final RESET_STATE_VALUE_DISABLE:Ljava/lang/String; = "disable-value"

.field private static final TAG:Ljava/lang/String; = "SettingUtils"

.field private static final UNKNOWN:I = -0x1


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    sget-boolean v0, Lcom/android/camera/Log;->LOGV:Z

    sput-boolean v0, Lcom/android/camera/SettingUtils;->LOG:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    return-void
.end method

.method public static buildEnableList([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "list"
    .parameter "current"

    .prologue
    .line 47
    const/4 v2, 0x0

    .line 48
    .local v2, listStr:Ljava/lang/String;
    if-eqz p0, :cond_1

    .line 49
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[L];"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 50
    const/4 v0, 0x0

    .local v0, i:I
    array-length v1, p0

    .local v1, len:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 51
    add-int/lit8 v3, v1, -0x1

    if-ne v0, v3, :cond_0

    .line 52
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, p0, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 50
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 54
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, p0, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 58
    .end local v0           #i:I
    .end local v1           #len:I
    :cond_1
    sget-boolean v3, Lcom/android/camera/SettingUtils;->LOG:Z

    if-eqz v3, :cond_2

    .line 59
    const-string v3, "SettingUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "buildEnableList("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") return "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    :cond_2
    return-object v2
.end method

.method public static buildSize(Landroid/hardware/Camera$Size;)Ljava/lang/String;
    .locals 2
    .parameter "size"

    .prologue
    .line 202
    if-eqz p0, :cond_0

    .line 203
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 205
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "(null)"

    goto :goto_0
.end method

.method public static contains([II)Z
    .locals 6
    .parameter "list"
    .parameter "value"

    .prologue
    .line 122
    const/4 v0, 0x0

    .line 123
    .local v0, find:Z
    if-eqz p0, :cond_0

    .line 124
    const/4 v1, 0x0

    .local v1, i:I
    array-length v2, p0

    .local v2, len:I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 125
    aget v3, p0, v1

    if-ne v3, p1, :cond_2

    .line 126
    const/4 v0, 0x1

    .line 131
    .end local v1           #i:I
    .end local v2           #len:I
    :cond_0
    sget-boolean v3, Lcom/android/camera/SettingUtils;->LOG:Z

    if-eqz v3, :cond_1

    .line 132
    const-string v3, "SettingUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "contains("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") return "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    :cond_1
    return v0

    .line 124
    .restart local v1       #i:I
    .restart local v2       #len:I
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static contains([Ljava/lang/CharSequence;Ljava/lang/String;)Z
    .locals 6
    .parameter "list"
    .parameter "value"

    .prologue
    .line 154
    const/4 v0, 0x0

    .line 155
    .local v0, find:Z
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 156
    const/4 v1, 0x0

    .local v1, i:I
    array-length v2, p0

    .local v2, len:I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 157
    aget-object v3, p0, v1

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 158
    const/4 v0, 0x1

    .line 163
    .end local v1           #i:I
    .end local v2           #len:I
    :cond_0
    sget-boolean v3, Lcom/android/camera/SettingUtils;->LOG:Z

    if-eqz v3, :cond_1

    .line 164
    const-string v3, "SettingUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "contains("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") return "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    :cond_1
    return v0

    .line 156
    .restart local v1       #i:I
    .restart local v2       #len:I
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static contains([Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .parameter "list"
    .parameter "value"

    .prologue
    .line 138
    const/4 v0, 0x0

    .line 139
    .local v0, find:Z
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 140
    const/4 v1, 0x0

    .local v1, i:I
    array-length v2, p0

    .local v2, len:I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 141
    aget-object v3, p0, v1

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 142
    const/4 v0, 0x1

    .line 147
    .end local v1           #i:I
    .end local v2           #len:I
    :cond_0
    sget-boolean v3, Lcom/android/camera/SettingUtils;->LOG:Z

    if-eqz v3, :cond_1

    .line 148
    const-string v3, "SettingUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "contains("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") return "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    :cond_1
    return v0

    .line 140
    .restart local v1       #i:I
    .restart local v2       #len:I
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static getDefaultValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "listString"

    .prologue
    const/4 v3, 0x1

    .line 107
    const/4 v1, 0x0

    .line 108
    .local v1, value:Ljava/lang/String;
    invoke-static {p0}, Lcom/android/camera/SettingUtils;->isBuiltList(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 109
    const-string v2, ";"

    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 110
    .local v0, temp:[Ljava/lang/String;
    if-eqz v0, :cond_0

    array-length v2, v0

    if-le v2, v3, :cond_0

    .line 111
    aget-object v1, v0, v3

    .line 114
    .end local v0           #temp:[Ljava/lang/String;
    :cond_0
    sget-boolean v2, Lcom/android/camera/SettingUtils;->LOG:Z

    if-eqz v2, :cond_1

    .line 115
    const-string v2, "SettingUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getDefaultValue("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") return "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    :cond_1
    return-object v1
.end method

.method public static getEnabledArray(Ljava/lang/String;)[Ljava/lang/String;
    .locals 7
    .parameter "listString"

    .prologue
    .line 76
    const/4 v2, 0x0

    .line 77
    .local v2, list:[Ljava/lang/String;
    invoke-static {p0}, Lcom/android/camera/SettingUtils;->isBuiltList(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 78
    const-string v4, ";"

    invoke-virtual {p0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 79
    .local v3, temp:[Ljava/lang/String;
    array-length v4, v3

    add-int/lit8 v4, v4, -0x2

    new-array v2, v4, [Ljava/lang/String;

    .line 80
    const/4 v0, 0x2

    .local v0, i:I
    array-length v1, v3

    .local v1, len:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 81
    add-int/lit8 v4, v0, -0x2

    aget-object v5, v3, v0

    aput-object v5, v2, v4

    .line 80
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 84
    .end local v0           #i:I
    .end local v1           #len:I
    .end local v3           #temp:[Ljava/lang/String;
    :cond_0
    sget-boolean v4, Lcom/android/camera/SettingUtils;->LOG:Z

    if-eqz v4, :cond_1

    .line 85
    const-string v4, "SettingUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getEnabledArray("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") return "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    :cond_1
    return-object v2
.end method

.method public static getEnabledList(Ljava/lang/String;)Ljava/util/List;
    .locals 7
    .parameter "listString"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 91
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 92
    .local v2, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {p0}, Lcom/android/camera/SettingUtils;->isBuiltList(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 93
    const-string v4, ";"

    invoke-virtual {p0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 94
    .local v3, temp:[Ljava/lang/String;
    const/4 v0, 0x2

    .local v0, i:I
    array-length v1, v3

    .local v1, len:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 95
    aget-object v4, v3, v0

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 96
    aget-object v4, v3, v0

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 94
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 100
    .end local v0           #i:I
    .end local v1           #len:I
    .end local v3           #temp:[Ljava/lang/String;
    :cond_1
    sget-boolean v4, Lcom/android/camera/SettingUtils;->LOG:Z

    if-eqz v4, :cond_2

    .line 101
    const-string v4, "SettingUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getEnabledList("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") return "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    :cond_2
    return-object v2
.end method

.method public static getMainColor(Landroid/content/Context;)I
    .locals 6
    .parameter "context"

    .prologue
    .line 210
    const/4 v2, 0x0

    .line 211
    .local v2, themeColor:I
    const/4 v0, 0x0

    .line 212
    .local v0, finalColor:I
    invoke-static {}, Lcom/android/camera/FeatureSwitcher;->isThemeEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 213
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 214
    .local v1, res:Landroid/content/res/Resources;
    invoke-virtual {v1}, Landroid/content/res/Resources;->getThemeMainColor()I

    move-result v2

    .line 216
    .end local v1           #res:Landroid/content/res/Resources;
    :cond_0
    if-nez v2, :cond_2

    .line 217
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090011

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 221
    :goto_0
    sget-boolean v3, Lcom/android/camera/SettingUtils;->LOG:Z

    if-eqz v3, :cond_1

    .line 222
    const-string v3, "SettingUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getMainColor("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") get "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", return "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    :cond_1
    return v0

    .line 219
    :cond_2
    move v0, v2

    goto :goto_0
.end method

.method public static index([Ljava/lang/CharSequence;Ljava/lang/String;)I
    .locals 6
    .parameter "list"
    .parameter "value"

    .prologue
    .line 186
    const/4 v0, -0x1

    .line 187
    .local v0, findIndex:I
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 188
    const/4 v1, 0x0

    .local v1, i:I
    array-length v2, p0

    .local v2, len:I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 189
    aget-object v3, p0, v1

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 190
    move v0, v1

    .line 195
    .end local v1           #i:I
    .end local v2           #len:I
    :cond_0
    sget-boolean v3, Lcom/android/camera/SettingUtils;->LOG:Z

    if-eqz v3, :cond_1

    .line 196
    const-string v3, "SettingUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "index("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

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

    .line 198
    :cond_1
    return v0

    .line 188
    .restart local v1       #i:I
    .restart local v2       #len:I
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static index([Ljava/lang/String;Ljava/lang/String;)I
    .locals 6
    .parameter "list"
    .parameter "value"

    .prologue
    .line 170
    const/4 v0, -0x1

    .line 171
    .local v0, findIndex:I
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 172
    const/4 v1, 0x0

    .local v1, i:I
    array-length v2, p0

    .local v2, len:I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 173
    aget-object v3, p0, v1

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 174
    move v0, v1

    .line 179
    .end local v1           #i:I
    .end local v2           #len:I
    :cond_0
    sget-boolean v3, Lcom/android/camera/SettingUtils;->LOG:Z

    if-eqz v3, :cond_1

    .line 180
    const-string v3, "SettingUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "index("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

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

    .line 182
    :cond_1
    return v0

    .line 172
    .restart local v1       #i:I
    .restart local v2       #len:I
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static isBuiltList(Ljava/lang/String;)Z
    .locals 4
    .parameter "listString"

    .prologue
    .line 65
    const/4 v0, 0x0

    .line 66
    .local v0, isList:Z
    if-eqz p0, :cond_0

    const-string v1, "[L];"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 67
    const/4 v0, 0x1

    .line 69
    :cond_0
    sget-boolean v1, Lcom/android/camera/SettingUtils;->LOG:Z

    if-eqz v1, :cond_1

    .line 70
    const-string v1, "SettingUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isBuiltList("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") return "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    :cond_1
    return v0
.end method

.method public static isDisableValue(Ljava/lang/String;)Z
    .locals 4
    .parameter "value"

    .prologue
    .line 36
    const/4 v0, 0x0

    .line 37
    .local v0, reset:Z
    const-string v1, "disable-value"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 38
    const/4 v0, 0x1

    .line 40
    :cond_0
    sget-boolean v1, Lcom/android/camera/SettingUtils;->LOG:Z

    if-eqz v1, :cond_1

    .line 41
    const-string v1, "SettingUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isResetValue("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") return "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    :cond_1
    return v0
.end method

.method public static setEnabledState(Landroid/view/View;Z)V
    .locals 1
    .parameter "view"
    .parameter "enabled"

    .prologue
    .line 29
    if-eqz p0, :cond_0

    .line 30
    if-eqz p1, :cond_1

    const/high16 v0, 0x3f80

    .line 31
    .local v0, alpha:F
    :goto_0
    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    .line 33
    .end local v0           #alpha:F
    :cond_0
    return-void

    .line 30
    :cond_1
    const v0, 0x3e99999a

    goto :goto_0
.end method
