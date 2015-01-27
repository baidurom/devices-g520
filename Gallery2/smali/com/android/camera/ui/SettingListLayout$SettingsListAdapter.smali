.class Lcom/android/camera/ui/SettingListLayout$SettingsListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "SettingListLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/SettingListLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SettingsListAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/android/camera/ListPreference;",
        ">;"
    }
.end annotation


# instance fields
.field mInflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/android/camera/ui/SettingListLayout;


# direct methods
.method public constructor <init>(Lcom/android/camera/ui/SettingListLayout;)V
    .locals 3
    .parameter

    .prologue
    .line 68
    iput-object p1, p0, Lcom/android/camera/ui/SettingListLayout$SettingsListAdapter;->this$0:Lcom/android/camera/ui/SettingListLayout;

    .line 69
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    #getter for: Lcom/android/camera/ui/SettingListLayout;->mListItem:Ljava/util/ArrayList;
    invoke-static {p1}, Lcom/android/camera/ui/SettingListLayout;->access$000(Lcom/android/camera/ui/SettingListLayout;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 70
    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/SettingListLayout$SettingsListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 71
    return-void
.end method

.method private getSettingLayoutId(Lcom/android/camera/ListPreference;)I
    .locals 2
    .parameter "pref"

    .prologue
    .line 76
    if-nez p1, :cond_0

    .line 77
    const v0, 0x7f040018

    .line 90
    :goto_0
    return v0

    .line 82
    :cond_0
    const-string v0, "pref_camera_recordlocation_key"

    invoke-virtual {p1}, Lcom/android/camera/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "pref_camera_recordaudio_key"

    invoke-virtual {p1}, Lcom/android/camera/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "pref_video_eis_key"

    invoke-virtual {p1}, Lcom/android/camera/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "pref_camera_zsd_key"

    invoke-virtual {p1}, Lcom/android/camera/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 86
    :cond_1
    const v0, 0x7f04001a

    goto :goto_0

    .line 87
    :cond_2
    const-string v0, "pref_camera_image_properties_key"

    invoke-virtual {p1}, Lcom/android/camera/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 88
    const v0, 0x7f04001b

    goto :goto_0

    .line 90
    :cond_3
    const v0, 0x7f040019

    goto :goto_0
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v4, 0x1

    .line 95
    iget-object v3, p0, Lcom/android/camera/ui/SettingListLayout$SettingsListAdapter;->this$0:Lcom/android/camera/ui/SettingListLayout;

    #getter for: Lcom/android/camera/ui/SettingListLayout;->mListItem:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/camera/ui/SettingListLayout;->access$000(Lcom/android/camera/ui/SettingListLayout;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ListPreference;

    .line 96
    .local v0, pref:Lcom/android/camera/ListPreference;
    if-eqz p2, :cond_7

    .line 97
    if-nez v0, :cond_1

    .line 98
    instance-of v3, p2, Lcom/android/camera/ui/InLineSettingRestore;

    if-nez v3, :cond_0

    .line 99
    const/4 p2, 0x0

    .line 117
    :cond_0
    :goto_0
    if-eqz p2, :cond_7

    move-object v3, p2

    .line 118
    check-cast v3, Lcom/android/camera/ui/InLineSettingItem;

    invoke-virtual {v3, v0}, Lcom/android/camera/ui/InLineSettingItem;->initialize(Lcom/android/camera/ListPreference;)V

    .line 121
    if-eqz v0, :cond_5

    const-string v3, "pref_camera_recordaudio_key"

    invoke-virtual {v0}, Lcom/android/camera/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    instance-of v3, p2, Lcom/android/camera/ui/InLineSettingSwitch;

    if-eqz v3, :cond_5

    .line 126
    invoke-static {p2, v4}, Lcom/android/camera/SettingUtils;->setEnabledState(Landroid/view/View;Z)V

    :goto_1
    move-object v1, p2

    .line 145
    :goto_2
    return-object v1

    .line 101
    :cond_1
    const-string v3, "pref_camera_recordlocation_key"

    invoke-virtual {v0}, Lcom/android/camera/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "pref_video_eis_key"

    invoke-virtual {v0}, Lcom/android/camera/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "pref_camera_recordaudio_key"

    invoke-virtual {v0}, Lcom/android/camera/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "pref_camera_zsd_key"

    invoke-virtual {v0}, Lcom/android/camera/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 105
    :cond_2
    instance-of v3, p2, Lcom/android/camera/ui/InLineSettingSwitch;

    if-nez v3, :cond_0

    .line 106
    const/4 p2, 0x0

    goto :goto_0

    .line 108
    :cond_3
    const-string v3, "pref_camera_image_properties_key"

    invoke-virtual {v0}, Lcom/android/camera/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 109
    instance-of v3, p2, Lcom/android/camera/ui/InLineSettingVirtual;

    if-nez v3, :cond_0

    .line 110
    const/4 p2, 0x0

    goto :goto_0

    .line 113
    :cond_4
    instance-of v3, p2, Lcom/android/camera/ui/InLineSettingSublist;

    if-nez v3, :cond_0

    .line 114
    const/4 p2, 0x0

    goto :goto_0

    .line 128
    :cond_5
    if-nez v0, :cond_6

    move v3, v4

    :goto_3
    invoke-static {p2, v3}, Lcom/android/camera/SettingUtils;->setEnabledState(Landroid/view/View;Z)V

    goto :goto_1

    :cond_6
    invoke-virtual {v0}, Lcom/android/camera/ListPreference;->isEnabled()Z

    move-result v3

    goto :goto_3

    .line 135
    :cond_7
    invoke-direct {p0, v0}, Lcom/android/camera/ui/SettingListLayout$SettingsListAdapter;->getSettingLayoutId(Lcom/android/camera/ListPreference;)I

    move-result v2

    .line 136
    .local v2, viewLayoutId:I
    iget-object v3, p0, Lcom/android/camera/ui/SettingListLayout$SettingsListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const/4 v5, 0x0

    invoke-virtual {v3, v2, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/camera/ui/InLineSettingItem;

    .line 138
    .local v1, view:Lcom/android/camera/ui/InLineSettingItem;
    const v3, 0x7f040018

    if-ne v2, v3, :cond_8

    .line 139
    const/high16 v3, 0x7f0b

    invoke-virtual {v1, v3}, Landroid/view/View;->setId(I)V

    .line 142
    :cond_8
    invoke-virtual {v1, v0}, Lcom/android/camera/ui/InLineSettingItem;->initialize(Lcom/android/camera/ListPreference;)V

    .line 143
    iget-object v3, p0, Lcom/android/camera/ui/SettingListLayout$SettingsListAdapter;->this$0:Lcom/android/camera/ui/SettingListLayout;

    invoke-virtual {v1, v3}, Lcom/android/camera/ui/InLineSettingItem;->setSettingChangedListener(Lcom/android/camera/ui/InLineSettingItem$Listener;)V

    .line 144
    if-nez v0, :cond_9

    :goto_4
    invoke-static {p2, v4}, Lcom/android/camera/SettingUtils;->setEnabledState(Landroid/view/View;Z)V

    goto :goto_2

    :cond_9
    invoke-virtual {v0}, Lcom/android/camera/ListPreference;->isEnabled()Z

    move-result v4

    goto :goto_4
.end method
