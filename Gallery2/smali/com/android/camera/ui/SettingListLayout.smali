.class public Lcom/android/camera/ui/SettingListLayout;
.super Landroid/widget/FrameLayout;
.source "SettingListLayout.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/android/camera/ui/InLineSettingItem$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/SettingListLayout$SettingsListAdapter;,
        Lcom/android/camera/ui/SettingListLayout$Listener;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field private static final LOG:Z = false

.field private static final TAG:Ljava/lang/String; = "SettingListLayout"


# instance fields
.field private mLastItem:Lcom/android/camera/ui/InLineSettingItem;

.field private mListItem:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/camera/ListPreference;",
            ">;"
        }
    .end annotation
.end field

.field private mListItemAdapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Lcom/android/camera/ListPreference;",
            ">;"
        }
    .end annotation
.end field

.field private mListener:Lcom/android/camera/ui/SettingListLayout$Listener;

.field private mSettingList:Landroid/widget/ListView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    sget-boolean v0, Lcom/android/camera/Log;->LOGV:Z

    sput-boolean v0, Lcom/android/camera/ui/SettingListLayout;->LOG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 154
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/SettingListLayout;->mListItem:Ljava/util/ArrayList;

    .line 155
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/ui/SettingListLayout;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/camera/ui/SettingListLayout;->mListItem:Ljava/util/ArrayList;

    return-object v0
.end method


# virtual methods
.method public collapseChild()Z
    .locals 4

    .prologue
    .line 234
    const/4 v0, 0x0

    .line 235
    .local v0, collapse:Z
    iget-object v1, p0, Lcom/android/camera/ui/SettingListLayout;->mLastItem:Lcom/android/camera/ui/InLineSettingItem;

    if-eqz v1, :cond_0

    .line 236
    iget-object v1, p0, Lcom/android/camera/ui/SettingListLayout;->mLastItem:Lcom/android/camera/ui/InLineSettingItem;

    invoke-virtual {v1}, Lcom/android/camera/ui/InLineSettingItem;->collapseChild()Z

    move-result v0

    .line 238
    :cond_0
    sget-boolean v1, Lcom/android/camera/ui/SettingListLayout;->LOG:Z

    if-eqz v1, :cond_1

    .line 239
    const-string v1, "SettingListLayout"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "collapseChild() return "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    :cond_1
    return v0
.end method

.method public initialize(Lcom/android/camera/PreferenceGroup;[Ljava/lang/String;Z)V
    .locals 5
    .parameter "group"
    .parameter "keys"
    .parameter "addrestore"

    .prologue
    .line 158
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 167
    .local v0, context:Landroid/content/Context;
    iget-object v3, p0, Lcom/android/camera/ui/SettingListLayout;->mListItem:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 169
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v3, p2

    if-ge v1, v3, :cond_1

    .line 170
    aget-object v3, p2, v1

    invoke-virtual {p1, v3}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v2

    .line 171
    .local v2, pref:Lcom/android/camera/ListPreference;
    if-eqz v2, :cond_0

    .line 172
    iget-object v3, p0, Lcom/android/camera/ui/SettingListLayout;->mListItem:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 169
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 176
    .end local v2           #pref:Lcom/android/camera/ListPreference;
    :cond_1
    if-eqz p3, :cond_2

    .line 177
    iget-object v3, p0, Lcom/android/camera/ui/SettingListLayout;->mListItem:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 180
    :cond_2
    new-instance v3, Lcom/android/camera/ui/SettingListLayout$SettingsListAdapter;

    invoke-direct {v3, p0}, Lcom/android/camera/ui/SettingListLayout$SettingsListAdapter;-><init>(Lcom/android/camera/ui/SettingListLayout;)V

    iput-object v3, p0, Lcom/android/camera/ui/SettingListLayout;->mListItemAdapter:Landroid/widget/ArrayAdapter;

    .line 181
    iget-object v3, p0, Lcom/android/camera/ui/SettingListLayout;->mSettingList:Landroid/widget/ListView;

    iget-object v4, p0, Lcom/android/camera/ui/SettingListLayout;->mListItemAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 182
    iget-object v3, p0, Lcom/android/camera/ui/SettingListLayout;->mSettingList:Landroid/widget/ListView;

    invoke-virtual {v3, p0}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 183
    iget-object v3, p0, Lcom/android/camera/ui/SettingListLayout;->mSettingList:Landroid/widget/ListView;

    const v4, 0x106000d

    invoke-virtual {v3, v4}, Landroid/widget/AbsListView;->setSelector(I)V

    .line 184
    iget-object v3, p0, Lcom/android/camera/ui/SettingListLayout;->mSettingList:Landroid/widget/ListView;

    invoke-virtual {v3, p0}, Landroid/widget/AbsListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 185
    return-void
.end method

.method public onDismiss(Lcom/android/camera/ui/InLineSettingItem;)V
    .locals 3
    .parameter "item"

    .prologue
    .line 218
    const-string v0, "SettingListLayout"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDismiss("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") mLastItem="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/ui/SettingListLayout;->mLastItem:Lcom/android/camera/ui/InLineSettingItem;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/ui/SettingListLayout;->mLastItem:Lcom/android/camera/ui/InLineSettingItem;

    .line 220
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 61
    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    .line 62
    const v0, 0x7f0b00e0

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/android/camera/ui/SettingListLayout;->mSettingList:Landroid/widget/ListView;

    .line 63
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 199
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/android/camera/ui/SettingListLayout;->mListItem:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p3, v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/SettingListLayout;->mListener:Lcom/android/camera/ui/SettingListLayout$Listener;

    if-eqz v0, :cond_0

    .line 200
    iget-object v0, p0, Lcom/android/camera/ui/SettingListLayout;->mListener:Lcom/android/camera/ui/SettingListLayout$Listener;

    invoke-interface {v0}, Lcom/android/camera/ui/SettingListLayout$Listener;->onRestorePreferencesClicked()V

    .line 202
    :cond_0
    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 3
    .parameter "view"
    .parameter "firstVisibleItem"
    .parameter "visibleItemCount"
    .parameter "totalItemCount"

    .prologue
    .line 247
    sget-boolean v0, Lcom/android/camera/ui/SettingListLayout;->LOG:Z

    if-eqz v0, :cond_0

    .line 248
    const-string v0, "SettingListLayout"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onScroll("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    :cond_0
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 3
    .parameter "view"
    .parameter "scrollState"

    .prologue
    .line 255
    sget-boolean v0, Lcom/android/camera/ui/SettingListLayout;->LOG:Z

    if-eqz v0, :cond_0

    .line 256
    const-string v0, "SettingListLayout"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onScrollStateChanged("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    :cond_0
    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    .line 259
    invoke-virtual {p0}, Lcom/android/camera/ui/SettingListLayout;->collapseChild()Z

    .line 261
    :cond_1
    return-void
.end method

.method public onSettingChanged(Lcom/android/camera/ui/InLineSettingItem;)V
    .locals 1
    .parameter "item"

    .prologue
    .line 189
    iget-object v0, p0, Lcom/android/camera/ui/SettingListLayout;->mLastItem:Lcom/android/camera/ui/InLineSettingItem;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/SettingListLayout;->mLastItem:Lcom/android/camera/ui/InLineSettingItem;

    if-eq v0, p1, :cond_0

    .line 190
    iget-object v0, p0, Lcom/android/camera/ui/SettingListLayout;->mLastItem:Lcom/android/camera/ui/InLineSettingItem;

    invoke-virtual {v0}, Lcom/android/camera/ui/InLineSettingItem;->collapseChild()Z

    .line 192
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/SettingListLayout;->mListener:Lcom/android/camera/ui/SettingListLayout$Listener;

    if-eqz v0, :cond_1

    .line 193
    iget-object v0, p0, Lcom/android/camera/ui/SettingListLayout;->mListener:Lcom/android/camera/ui/SettingListLayout$Listener;

    invoke-interface {v0, p0}, Lcom/android/camera/ui/SettingListLayout$Listener;->onSettingChanged(Lcom/android/camera/ui/SettingListLayout;)V

    .line 195
    :cond_1
    return-void
.end method

.method public onShow(Lcom/android/camera/ui/InLineSettingItem;)V
    .locals 3
    .parameter "item"

    .prologue
    .line 224
    sget-boolean v0, Lcom/android/camera/ui/SettingListLayout;->LOG:Z

    if-eqz v0, :cond_0

    .line 225
    const-string v0, "SettingListLayout"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onShow("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") mLastItem="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/ui/SettingListLayout;->mLastItem:Lcom/android/camera/ui/InLineSettingItem;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/SettingListLayout;->mLastItem:Lcom/android/camera/ui/InLineSettingItem;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/ui/SettingListLayout;->mLastItem:Lcom/android/camera/ui/InLineSettingItem;

    if-eq v0, p1, :cond_1

    .line 228
    iget-object v0, p0, Lcom/android/camera/ui/SettingListLayout;->mLastItem:Lcom/android/camera/ui/InLineSettingItem;

    invoke-virtual {v0}, Lcom/android/camera/ui/InLineSettingItem;->collapseChild()Z

    .line 230
    :cond_1
    iput-object p1, p0, Lcom/android/camera/ui/SettingListLayout;->mLastItem:Lcom/android/camera/ui/InLineSettingItem;

    .line 231
    return-void
.end method

.method public reloadPreference()V
    .locals 5

    .prologue
    .line 205
    iget-object v4, p0, Lcom/android/camera/ui/SettingListLayout;->mSettingList:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 206
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 207
    iget-object v4, p0, Lcom/android/camera/ui/SettingListLayout;->mListItem:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/ListPreference;

    .line 208
    .local v2, pref:Lcom/android/camera/ListPreference;
    if-eqz v2, :cond_0

    .line 209
    iget-object v4, p0, Lcom/android/camera/ui/SettingListLayout;->mSettingList:Landroid/widget/ListView;

    invoke-virtual {v4, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/camera/ui/InLineSettingItem;

    .line 211
    .local v3, settingItem:Lcom/android/camera/ui/InLineSettingItem;
    invoke-virtual {v3}, Lcom/android/camera/ui/InLineSettingItem;->reloadPreference()V

    .line 206
    .end local v3           #settingItem:Lcom/android/camera/ui/InLineSettingItem;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 214
    .end local v2           #pref:Lcom/android/camera/ListPreference;
    :cond_1
    return-void
.end method

.method public setSettingChangedListener(Lcom/android/camera/ui/SettingListLayout$Listener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 150
    iput-object p1, p0, Lcom/android/camera/ui/SettingListLayout;->mListener:Lcom/android/camera/ui/SettingListLayout$Listener;

    .line 151
    return-void
.end method
