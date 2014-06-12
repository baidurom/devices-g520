.class public Lcom/android/camera/ui/SettingSublistLayout;
.super Lcom/android/camera/ui/RotateLayout;
.source "SettingSublistLayout.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/SettingSublistLayout$1;,
        Lcom/android/camera/ui/SettingSublistLayout$ViewHolder;,
        Lcom/android/camera/ui/SettingSublistLayout$MyAdapter;,
        Lcom/android/camera/ui/SettingSublistLayout$Listener;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field private static final LOG:Z = false

.field private static final TAG:Ljava/lang/String; = "SettingSublistLayout"


# instance fields
.field private mAdapter:Lcom/android/camera/ui/SettingSublistLayout$MyAdapter;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mListener:Lcom/android/camera/ui/SettingSublistLayout$Listener;

.field private mPreference:Lcom/android/camera/ListPreference;

.field private mSettingList:Landroid/view/ViewGroup;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    sget-boolean v0, Lcom/android/camera/Log;->LOGV:Z

    sput-boolean v0, Lcom/android/camera/ui/SettingSublistLayout;->LOG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 56
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/RotateLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 57
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/SettingSublistLayout;->mInflater:Landroid/view/LayoutInflater;

    .line 58
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/ui/SettingSublistLayout;)Lcom/android/camera/ListPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/camera/ui/SettingSublistLayout;->mPreference:Lcom/android/camera/ListPreference;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/camera/ui/SettingSublistLayout;)Landroid/view/LayoutInflater;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/camera/ui/SettingSublistLayout;->mInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method


# virtual methods
.method public initialize(Lcom/android/camera/ListPreference;)V
    .locals 2
    .parameter "preference"

    .prologue
    .line 130
    iput-object p1, p0, Lcom/android/camera/ui/SettingSublistLayout;->mPreference:Lcom/android/camera/ListPreference;

    .line 131
    new-instance v0, Lcom/android/camera/ui/SettingSublistLayout$MyAdapter;

    invoke-direct {v0, p0}, Lcom/android/camera/ui/SettingSublistLayout$MyAdapter;-><init>(Lcom/android/camera/ui/SettingSublistLayout;)V

    iput-object v0, p0, Lcom/android/camera/ui/SettingSublistLayout;->mAdapter:Lcom/android/camera/ui/SettingSublistLayout$MyAdapter;

    .line 132
    iget-object v0, p0, Lcom/android/camera/ui/SettingSublistLayout;->mSettingList:Landroid/view/ViewGroup;

    check-cast v0, Landroid/widget/AbsListView;

    iget-object v1, p0, Lcom/android/camera/ui/SettingSublistLayout;->mAdapter:Lcom/android/camera/ui/SettingSublistLayout$MyAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 133
    iget-object v0, p0, Lcom/android/camera/ui/SettingSublistLayout;->mSettingList:Landroid/view/ViewGroup;

    check-cast v0, Landroid/widget/AbsListView;

    invoke-virtual {v0, p0}, Landroid/widget/AbsListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 134
    invoke-virtual {p0}, Lcom/android/camera/ui/SettingSublistLayout;->reloadPreference()V

    .line 147
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 62
    invoke-super {p0}, Lcom/android/camera/ui/RotateLayout;->onFinishInflate()V

    .line 63
    const v0, 0x7f0b00e0

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/SettingSublistLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/camera/ui/SettingSublistLayout;->mSettingList:Landroid/view/ViewGroup;

    .line 64
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .parameter
    .parameter "view"
    .parameter "index"
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
    .line 175
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    sget-boolean v0, Lcom/android/camera/ui/SettingSublistLayout;->LOG:Z

    if-eqz v0, :cond_0

    .line 176
    const-string v0, "SettingSublistLayout"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onItemClick("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/ui/SettingSublistLayout;->mAdapter:Lcom/android/camera/ui/SettingSublistLayout$MyAdapter;

    invoke-virtual {v2, p3}, Lcom/android/camera/ui/SettingSublistLayout$MyAdapter;->isEnabled(I)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/SettingSublistLayout;->mAdapter:Lcom/android/camera/ui/SettingSublistLayout$MyAdapter;

    invoke-virtual {v0, p3}, Lcom/android/camera/ui/SettingSublistLayout$MyAdapter;->isEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 179
    iget-object v0, p0, Lcom/android/camera/ui/SettingSublistLayout;->mPreference:Lcom/android/camera/ListPreference;

    invoke-virtual {v0, p3}, Lcom/android/camera/ListPreference;->setValueIndex(I)V

    .line 180
    iget-object v0, p0, Lcom/android/camera/ui/SettingSublistLayout;->mListener:Lcom/android/camera/ui/SettingSublistLayout$Listener;

    if-eqz v0, :cond_1

    .line 181
    iget-object v0, p0, Lcom/android/camera/ui/SettingSublistLayout;->mListener:Lcom/android/camera/ui/SettingSublistLayout$Listener;

    invoke-interface {v0}, Lcom/android/camera/ui/SettingSublistLayout$Listener;->onSettingChanged()V

    .line 184
    :cond_1
    return-void
.end method

.method public reloadPreference()V
    .locals 5

    .prologue
    .line 151
    iget-object v2, p0, Lcom/android/camera/ui/SettingSublistLayout;->mPreference:Lcom/android/camera/ListPreference;

    invoke-virtual {v2}, Lcom/android/camera/ListPreference;->getOverrideValue()Ljava/lang/String;

    move-result-object v1

    .line 152
    .local v1, value:Ljava/lang/String;
    if-nez v1, :cond_0

    .line 153
    iget-object v2, p0, Lcom/android/camera/ui/SettingSublistLayout;->mPreference:Lcom/android/camera/ListPreference;

    invoke-virtual {v2}, Lcom/android/camera/ListPreference;->reloadValue()V

    .line 154
    iget-object v2, p0, Lcom/android/camera/ui/SettingSublistLayout;->mPreference:Lcom/android/camera/ListPreference;

    invoke-virtual {v2}, Lcom/android/camera/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 156
    :cond_0
    iget-object v2, p0, Lcom/android/camera/ui/SettingSublistLayout;->mPreference:Lcom/android/camera/ListPreference;

    invoke-virtual {v2, v1}, Lcom/android/camera/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    .line 157
    .local v0, index:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_2

    .line 158
    iget-object v2, p0, Lcom/android/camera/ui/SettingSublistLayout;->mAdapter:Lcom/android/camera/ui/SettingSublistLayout$MyAdapter;

    invoke-virtual {v2, v0}, Lcom/android/camera/ui/SettingSublistLayout$MyAdapter;->updateItemSelected(I)V

    .line 159
    iget-object v2, p0, Lcom/android/camera/ui/SettingSublistLayout;->mSettingList:Landroid/view/ViewGroup;

    check-cast v2, Landroid/widget/AbsListView;

    invoke-virtual {v2, v0}, Landroid/widget/AbsListView;->setSelection(I)V

    .line 164
    :goto_0
    sget-boolean v2, Lcom/android/camera/ui/SettingSublistLayout;->LOG:Z

    if-eqz v2, :cond_1

    .line 165
    const-string v2, "SettingSublistLayout"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "reloadPreference() mPreference="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/ui/SettingSublistLayout;->mPreference:Lcom/android/camera/ListPreference;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", index="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    :cond_1
    return-void

    .line 161
    :cond_2
    const-string v2, "SettingSublistLayout"

    const-string v3, "Invalid preference value."

    invoke-static {v2, v3}, Lcom/android/camera/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    iget-object v2, p0, Lcom/android/camera/ui/SettingSublistLayout;->mPreference:Lcom/android/camera/ListPreference;

    invoke-virtual {v2}, Lcom/android/camera/ListPreference;->print()V

    goto :goto_0
.end method

.method public setSettingChangedListener(Lcom/android/camera/ui/SettingSublistLayout$Listener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 170
    iput-object p1, p0, Lcom/android/camera/ui/SettingSublistLayout;->mListener:Lcom/android/camera/ui/SettingSublistLayout$Listener;

    .line 171
    return-void
.end method
