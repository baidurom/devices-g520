.class public Lcom/android/camera/ListPreference;
.super Lcom/android/camera/CameraPreference;
.source "ListPreference.java"


# static fields
#the value of this static final field might be set in the static constructor
.field private static final LOG:Z = false

.field private static final TAG:Ljava/lang/String; = "ListPreference"

.field public static final UNKNOWN:I = -0x1


# instance fields
.field private mClickable:Z

.field private final mDefaultValues:[Ljava/lang/CharSequence;

.field private mEnabled:Z

.field private mEnabledList:[Z

.field private mEntries:[Ljava/lang/CharSequence;

.field private mEntryValues:[Ljava/lang/CharSequence;

.field private final mKey:Ljava/lang/String;

.field private mLoaded:Z

.field private mOriginalEntries:[Ljava/lang/CharSequence;

.field private mOriginalEntryValues:[Ljava/lang/CharSequence;

.field private mOverrideList:[Ljava/lang/String;

.field private mOverrideValue:Ljava/lang/String;

.field private mValue:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    sget-boolean v0, Lcom/android/camera/Log;->LOGV:Z

    sput-boolean v0, Lcom/android/camera/ListPreference;->LOG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 55
    invoke-direct {p0, p1, p2}, Lcom/android/camera/CameraPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    iput-boolean v5, p0, Lcom/android/camera/ListPreference;->mLoaded:Z

    .line 47
    iput-boolean v4, p0, Lcom/android/camera/ListPreference;->mEnabled:Z

    .line 51
    iput-boolean v4, p0, Lcom/android/camera/ListPreference;->mClickable:Z

    .line 57
    sget-object v3, Lcom/android/camera/R$styleable;->ListPreference:[I

    invoke-virtual {p1, p2, v3, v5, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 60
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/camera/Util;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, p0, Lcom/android/camera/ListPreference;->mKey:Ljava/lang/String;

    .line 68
    const/4 v1, 0x1

    .line 69
    .local v1, attrDefaultValue:I
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v2

    .line 70
    .local v2, tv:Landroid/util/TypedValue;
    if-eqz v2, :cond_0

    iget v3, v2, Landroid/util/TypedValue;->type:I

    if-ne v3, v4, :cond_0

    .line 71
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, p0, Lcom/android/camera/ListPreference;->mDefaultValues:[Ljava/lang/CharSequence;

    .line 77
    :goto_0
    const/4 v3, 0x3

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/camera/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 78
    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/camera/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 79
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 81
    invoke-virtual {p0}, Lcom/android/camera/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, p0, Lcom/android/camera/ListPreference;->mOriginalEntryValues:[Ljava/lang/CharSequence;

    .line 82
    invoke-virtual {p0}, Lcom/android/camera/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, p0, Lcom/android/camera/ListPreference;->mOriginalEntries:[Ljava/lang/CharSequence;

    .line 83
    return-void

    .line 73
    :cond_0
    new-array v3, v4, [Ljava/lang/CharSequence;

    iput-object v3, p0, Lcom/android/camera/ListPreference;->mDefaultValues:[Ljava/lang/CharSequence;

    .line 74
    iget-object v3, p0, Lcom/android/camera/ListPreference;->mDefaultValues:[Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized filterUnsupported(Ljava/util/List;)V
    .locals 6
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
    .line 190
    .local p1, supported:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 191
    .local v0, entries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 192
    .local v1, entryValues:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    const/4 v2, 0x0

    .local v2, i:I
    iget-object v5, p0, Lcom/android/camera/ListPreference;->mOriginalEntryValues:[Ljava/lang/CharSequence;

    array-length v3, v5

    .local v3, len:I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 193
    iget-object v5, p0, Lcom/android/camera/ListPreference;->mOriginalEntryValues:[Ljava/lang/CharSequence;

    aget-object v5, v5, v2

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v5}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v5

    if-ltz v5, :cond_0

    .line 194
    iget-object v5, p0, Lcom/android/camera/ListPreference;->mOriginalEntries:[Ljava/lang/CharSequence;

    aget-object v5, v5, v2

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 195
    iget-object v5, p0, Lcom/android/camera/ListPreference;->mOriginalEntryValues:[Ljava/lang/CharSequence;

    aget-object v5, v5, v2

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 192
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 198
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 199
    .local v4, size:I
    new-array v5, v4, [Ljava/lang/CharSequence;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/CharSequence;

    iput-object v5, p0, Lcom/android/camera/ListPreference;->mEntries:[Ljava/lang/CharSequence;

    .line 200
    new-array v5, v4, [Ljava/lang/CharSequence;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/CharSequence;

    iput-object v5, p0, Lcom/android/camera/ListPreference;->mEntryValues:[Ljava/lang/CharSequence;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 201
    monitor-exit p0

    return-void

    .line 190
    .end local v0           #entries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    .end local v1           #entryValues:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    .end local v2           #i:I
    .end local v3           #len:I
    .end local v4           #size:I
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method public declared-synchronized findIndexOfValue(Ljava/lang/String;)I
    .locals 5
    .parameter "value"

    .prologue
    .line 156
    monitor-enter p0

    const/4 v0, 0x0

    .local v0, i:I
    :try_start_0
    iget-object v2, p0, Lcom/android/camera/ListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    array-length v1, v2

    .local v1, n:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 157
    iget-object v2, p0, Lcom/android/camera/ListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    aget-object v2, v2, v0

    invoke-static {v2, p1}, Lcom/android/camera/Util;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_0

    .line 165
    .end local v0           #i:I
    :goto_1
    monitor-exit p0

    return v0

    .line 156
    .restart local v0       #i:I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 161
    :cond_1
    :try_start_1
    sget-boolean v2, Lcom/android/camera/ListPreference;->LOG:Z

    if-eqz v2, :cond_2

    .line 162
    invoke-virtual {p0}, Lcom/android/camera/ListPreference;->print()V

    .line 163
    const-string v2, "ListPreference"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "findIndexOfValue("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") not find!!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 165
    :cond_2
    const/4 v0, -0x1

    goto :goto_1

    .line 156
    .end local v1           #n:I
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized findSupportedDefaultValue()Ljava/lang/String;
    .locals 4

    .prologue
    .line 126
    monitor-enter p0

    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/android/camera/ListPreference;->mDefaultValues:[Ljava/lang/CharSequence;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 127
    const/4 v1, 0x0

    .local v1, j:I
    :goto_1
    iget-object v2, p0, Lcom/android/camera/ListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 130
    iget-object v2, p0, Lcom/android/camera/ListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    aget-object v2, v2, v1

    iget-object v3, p0, Lcom/android/camera/ListPreference;->mDefaultValues:[Ljava/lang/CharSequence;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 131
    iget-object v2, p0, Lcom/android/camera/ListPreference;->mDefaultValues:[Ljava/lang/CharSequence;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 135
    .end local v1           #j:I
    :goto_2
    monitor-exit p0

    return-object v2

    .line 127
    .restart local v1       #j:I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 126
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 135
    .end local v1           #j:I
    :cond_2
    const/4 v2, 0x0

    goto :goto_2

    .line 126
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public getDefaultValue()Ljava/lang/String;
    .locals 2

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/camera/ListPreference;->mDefaultValues:[Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ListPreference;->mDefaultValues:[Ljava/lang/CharSequence;

    array-length v0, v0

    if-lez v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/android/camera/ListPreference;->mDefaultValues:[Ljava/lang/CharSequence;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 121
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getEntries()[Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/camera/ListPreference;->mEntries:[Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getEntry()Ljava/lang/String;
    .locals 4

    .prologue
    .line 169
    invoke-virtual {p0}, Lcom/android/camera/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/camera/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    .line 170
    .local v0, index:I
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/android/camera/ListPreference;->mEntries:[Ljava/lang/CharSequence;

    array-length v1, v1

    if-lt v0, v1, :cond_1

    .line 171
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/ListPreference;->print()V

    .line 172
    const-string v1, "ListPreference"

    const-string v2, "getEntry()"

    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v1, v2, v3}, Lcom/android/camera/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 173
    const/4 v1, 0x0

    .line 175
    :goto_0
    return-object v1

    :cond_1
    iget-object v1, p0, Lcom/android/camera/ListPreference;->mEntries:[Ljava/lang/CharSequence;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getEntryValues()[Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/camera/ListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getIconId(I)I
    .locals 1
    .parameter "index"

    .prologue
    .line 247
    const/4 v0, -0x1

    return v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/camera/ListPreference;->mKey:Ljava/lang/String;

    return-object v0
.end method

.method public getOriginalEntries()[Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 274
    iget-object v0, p0, Lcom/android/camera/ListPreference;->mOriginalEntries:[Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getOriginalEntryValues()[Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 270
    iget-object v0, p0, Lcom/android/camera/ListPreference;->mOriginalEntryValues:[Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getOverrideValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 243
    iget-object v0, p0, Lcom/android/camera/ListPreference;->mOverrideValue:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 4

    .prologue
    .line 106
    iget-boolean v1, p0, Lcom/android/camera/ListPreference;->mLoaded:Z

    if-nez v1, :cond_0

    .line 107
    invoke-virtual {p0}, Lcom/android/camera/ListPreference;->findSupportedDefaultValue()Ljava/lang/String;

    move-result-object v0

    .line 108
    .local v0, defaultValue:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/camera/ListPreference;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/ListPreference;->mKey:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/ListPreference;->mValue:Ljava/lang/String;

    .line 109
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/camera/ListPreference;->mLoaded:Z

    .line 110
    sget-boolean v1, Lcom/android/camera/ListPreference;->LOG:Z

    if-eqz v1, :cond_0

    .line 111
    const-string v1, "ListPreference"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getValue() reload defaultValue="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", real="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/ListPreference;->mValue:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    .end local v0           #defaultValue:Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lcom/android/camera/ListPreference;->mValue:Ljava/lang/String;

    return-object v1
.end method

.method public isClickable()Z
    .locals 1

    .prologue
    .line 282
    iget-boolean v0, p0, Lcom/android/camera/ListPreference;->mClickable:Z

    return v0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 251
    iget-boolean v0, p0, Lcom/android/camera/ListPreference;->mEnabled:Z

    return v0
.end method

.method public isEnabled(I)Z
    .locals 1
    .parameter "index"

    .prologue
    .line 262
    iget-object v0, p0, Lcom/android/camera/ListPreference;->mEnabledList:[Z

    if-eqz v0, :cond_0

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/android/camera/ListPreference;->mEnabledList:[Z

    array-length v0, v0

    if-lt p1, v0, :cond_1

    .line 263
    :cond_0
    const/4 v0, 0x1

    .line 265
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/android/camera/ListPreference;->mEnabledList:[Z

    aget-boolean v0, v0, p1

    goto :goto_0
.end method

.method protected persistStringValue(Ljava/lang/String;)V
    .locals 2
    .parameter "value"

    .prologue
    .line 179
    invoke-virtual {p0}, Lcom/android/camera/ListPreference;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 180
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    iget-object v1, p0, Lcom/android/camera/ListPreference;->mKey:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 181
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 182
    return-void
.end method

.method public declared-synchronized print()V
    .locals 4

    .prologue
    .line 204
    monitor-enter p0

    :try_start_0
    const-string v1, "ListPreference"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Preference key="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/camera/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ". value="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/camera/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/camera/ListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 206
    const-string v1, "ListPreference"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "entryValues["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/ListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 208
    :cond_0
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/android/camera/ListPreference;->mDefaultValues:[Ljava/lang/CharSequence;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 209
    const-string v1, "ListPreference"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "defaultValues["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/ListPreference;->mDefaultValues:[Ljava/lang/CharSequence;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 208
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 211
    :cond_1
    monitor-exit p0

    return-void

    .line 204
    .end local v0           #i:I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public reloadValue()V
    .locals 1

    .prologue
    .line 186
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/ListPreference;->mLoaded:Z

    .line 187
    return-void
.end method

.method public setClickable(Z)V
    .locals 0
    .parameter "clickable"

    .prologue
    .line 278
    iput-boolean p1, p0, Lcom/android/camera/ListPreference;->mClickable:Z

    .line 279
    return-void
.end method

.method public setEnabled(Z)V
    .locals 3
    .parameter "enabled"

    .prologue
    .line 255
    sget-boolean v0, Lcom/android/camera/ListPreference;->LOG:Z

    if-eqz v0, :cond_0

    .line 256
    const-string v0, "ListPreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setEnabled("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    :cond_0
    iput-boolean p1, p0, Lcom/android/camera/ListPreference;->mEnabled:Z

    .line 259
    return-void
.end method

.method public setEntries([Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "entries"

    .prologue
    .line 98
    if-nez p1, :cond_0

    const/4 v0, 0x0

    new-array p1, v0, [Ljava/lang/CharSequence;

    .end local p1
    :cond_0
    iput-object p1, p0, Lcom/android/camera/ListPreference;->mEntries:[Ljava/lang/CharSequence;

    .line 99
    return-void
.end method

.method public setEntryValues([Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "values"

    .prologue
    .line 102
    if-nez p1, :cond_0

    const/4 v0, 0x0

    new-array p1, v0, [Ljava/lang/CharSequence;

    .end local p1
    :cond_0
    iput-object p1, p0, Lcom/android/camera/ListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    .line 103
    return-void
.end method

.method public declared-synchronized setOverrideValue(Ljava/lang/String;)V
    .locals 5
    .parameter "override"

    .prologue
    .line 214
    monitor-enter p0

    :try_start_0
    sget-boolean v2, Lcom/android/camera/ListPreference;->LOG:Z

    if-eqz v2, :cond_0

    .line 215
    const-string v2, "ListPreference"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setOverrideValue("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    :cond_0
    iput-object p1, p0, Lcom/android/camera/ListPreference;->mOverrideValue:Ljava/lang/String;

    .line 218
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/camera/ListPreference;->mOverrideList:[Ljava/lang/String;

    .line 219
    if-nez p1, :cond_2

    .line 220
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/camera/ListPreference;->mEnabled:Z

    .line 231
    :goto_0
    iget-object v2, p0, Lcom/android/camera/ListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    array-length v2, v2

    new-array v2, v2, [Z

    iput-object v2, p0, Lcom/android/camera/ListPreference;->mEnabledList:[Z

    .line 232
    const/4 v0, 0x0

    .local v0, i:I
    iget-object v2, p0, Lcom/android/camera/ListPreference;->mEnabledList:[Z

    array-length v1, v2

    .local v1, len:I
    :goto_1
    if-ge v0, v1, :cond_6

    .line 233
    iget-object v2, p0, Lcom/android/camera/ListPreference;->mOverrideList:[Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/camera/ListPreference;->mOverrideList:[Ljava/lang/String;

    iget-object v3, p0, Lcom/android/camera/ListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/SettingUtils;->contains([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 234
    :cond_1
    iget-object v2, p0, Lcom/android/camera/ListPreference;->mEnabledList:[Z

    const/4 v3, 0x1

    aput-boolean v3, v2, v0

    .line 232
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 221
    .end local v0           #i:I
    .end local v1           #len:I
    :cond_2
    invoke-static {p1}, Lcom/android/camera/SettingUtils;->isBuiltList(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 222
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/camera/ListPreference;->mEnabled:Z

    .line 223
    invoke-static {p1}, Lcom/android/camera/SettingUtils;->getDefaultValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/ListPreference;->mOverrideValue:Ljava/lang/String;

    .line 224
    invoke-static {p1}, Lcom/android/camera/SettingUtils;->getEnabledArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/ListPreference;->mOverrideList:[Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 214
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 225
    :cond_3
    :try_start_1
    invoke-static {p1}, Lcom/android/camera/SettingUtils;->isDisableValue(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 226
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/camera/ListPreference;->mEnabled:Z

    .line 227
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/camera/ListPreference;->mOverrideValue:Ljava/lang/String;

    goto :goto_0

    .line 229
    :cond_4
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/camera/ListPreference;->mEnabled:Z

    goto :goto_0

    .line 236
    .restart local v0       #i:I
    .restart local v1       #len:I
    :cond_5
    iget-object v2, p0, Lcom/android/camera/ListPreference;->mEnabledList:[Z

    const/4 v3, 0x0

    aput-boolean v3, v2, v0

    goto :goto_2

    .line 239
    :cond_6
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/camera/ListPreference;->mLoaded:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 240
    monitor-exit p0

    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 1
    .parameter "value"

    .prologue
    .line 139
    invoke-virtual {p0, p1}, Lcom/android/camera/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_0

    .line 140
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 142
    :cond_0
    iput-object p1, p0, Lcom/android/camera/ListPreference;->mValue:Ljava/lang/String;

    .line 143
    invoke-virtual {p0, p1}, Lcom/android/camera/ListPreference;->persistStringValue(Ljava/lang/String;)V

    .line 144
    return-void
.end method

.method public setValueIndex(I)V
    .locals 3
    .parameter "index"

    .prologue
    .line 147
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/android/camera/ListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    array-length v0, v0

    if-lt p1, v0, :cond_1

    .line 148
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/ListPreference;->print()V

    .line 149
    const-string v0, "ListPreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setValueIndex("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v0, v1, v2}, Lcom/android/camera/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 153
    :goto_0
    return-void

    .line 152
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera/ListPreference;->setValue(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 287
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ListPreference(mKey="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/ListPreference;->mKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mTitle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/camera/ListPreference;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mOverride="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/ListPreference;->mOverrideValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mEnable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/camera/ListPreference;->mEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mValue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/ListPreference;->mValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mClickable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/camera/ListPreference;->mClickable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
