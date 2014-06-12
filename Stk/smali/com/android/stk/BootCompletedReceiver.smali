.class public Lcom/android/stk/BootCompletedReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BootCompletedReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v12, 0x0

    .line 70
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 71
    .local v1, action:Ljava/lang/String;
    invoke-static {}, Lcom/android/stk/StkAppInstaller;->getInstance()Lcom/android/stk/StkAppInstaller;

    move-result-object v2

    .line 72
    .local v2, appInstaller:Lcom/android/stk/StkAppInstaller;
    invoke-static {}, Lcom/android/stk/StkAppService;->getInstance()Lcom/android/stk/StkAppService;

    move-result-object v3

    .line 74
    .local v3, appService:Lcom/android/stk/StkAppService;
    const-string v9, "BootCompleteReceiver"

    const-string v10, "[onReceive]+"

    invoke-static {v9, v10}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    const-string v9, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 79
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 80
    .local v4, args:Landroid/os/Bundle;
    const-string v9, "op"

    const/4 v10, 0x5

    invoke-virtual {v4, v9, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 81
    const-string v9, "BootCompleteReceiver"

    const-string v10, "[ACTION_BOOT_COMPLETED]"

    invoke-static {v9, v10}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    new-instance v9, Landroid/content/Intent;

    const-class v10, Lcom/android/stk/StkAppService;

    invoke-direct {v9, p1, v10}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v9, v4}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v9

    invoke-virtual {p1, v9}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 86
    .end local v4           #args:Landroid/os/Bundle;
    :cond_0
    const-string v9, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 88
    const-string v9, "state"

    invoke-virtual {p2, v9, v12}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    .line 89
    .local v7, enabled:Z
    const-string v9, "BootCompleteReceiver"

    const-string v10, "[ACTION_AIRPLANE_MODE_CHANGED]"

    invoke-static {v9, v10}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    invoke-static {}, Lcom/android/stk/StkAppService;->isSetupMenuCalled()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 91
    const-string v9, "BootCompleteReceiver"

    const-string v10, "[ACTION_AIRPLANE_MODE_CHANGED][SetupMenuCalled]"

    invoke-static {v9, v10}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 93
    .local v6, bundle:Landroid/os/Bundle;
    const-string v9, "affinity"

    const-string v10, "com.android.stk"

    invoke-virtual {v6, v9, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    .line 95
    .local v8, it:Landroid/content/Intent;
    invoke-virtual {v8, v6}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 98
    const/4 v9, 0x1

    if-ne v7, v9, :cond_5

    .line 99
    const-string v9, "android.intent.action.ADD_RECENET_IGNORE"

    invoke-virtual {v8, v9}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 100
    invoke-virtual {p1, v8}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 101
    const-string v9, "BootCompleteReceiver"

    const-string v10, "[ACTION_AIRPLANE_MODE_CHANGED][start unInstall]+"

    invoke-static {v9, v10}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    invoke-virtual {v2, p1}, Lcom/android/stk/StkAppInstaller;->unInstall(Landroid/content/Context;)V

    .line 104
    const-string v9, "BootCompleteReceiver"

    const-string v10, "[ACTION_AIRPLANE_MODE_CHANGED][start unInstall]-"

    invoke-static {v9, v10}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    if-eqz v3, :cond_1

    .line 107
    invoke-virtual {v3, v12}, Lcom/android/stk/StkAppService;->setUserAccessState(Z)V

    .line 121
    .end local v6           #bundle:Landroid/os/Bundle;
    .end local v7           #enabled:Z
    .end local v8           #it:Landroid/content/Intent;
    :cond_1
    :goto_0
    const-string v9, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 123
    const-string v9, "BootCompleteReceiver"

    const-string v10, "get ACTION_SIM_STATE_CHANGED"

    invoke-static {v9, v10}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    const-string v9, "ss"

    invoke-virtual {p2, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 126
    .local v0, SIMStatus:Ljava/lang/String;
    const-string v9, "BootCompleteReceiver"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[ACTION_SIM_STATE_CHANGED][SimStatus] : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    const-string v9, "BootCompleteReceiver"

    const-string v10, "[ACTION_SIM_STATE_CHANGED]"

    invoke-static {v9, v10}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 130
    .restart local v6       #bundle:Landroid/os/Bundle;
    const-string v9, "affinity"

    const-string v10, "com.android.stk"

    invoke-virtual {v6, v9, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    .line 132
    .restart local v8       #it:Landroid/content/Intent;
    invoke-virtual {v8, v6}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 134
    const-string v9, "BootCompleteReceiver"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "isSetupMenuCalled["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {}, Lcom/android/stk/StkAppService;->isSetupMenuCalled()Z

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "]"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    const/4 v5, 0x1

    .line 137
    .local v5, bUnInstall:Z
    invoke-static {}, Lcom/android/stk/StkAppService;->isSetupMenuCalled()Z

    move-result v9

    if-eqz v9, :cond_3

    const-string v9, "READY"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    const-string v9, "IMSI"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    const-string v9, "LOADED"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 138
    :cond_2
    const/4 v5, 0x0

    .line 140
    :cond_3
    const-string v9, "BootCompleteReceiver"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[ACTION_SIM_STATE_CHANGED][bUnInstall] : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    if-eqz v5, :cond_6

    .line 143
    const-string v9, "BootCompleteReceiver"

    const-string v10, "ADD_RECENET_IGNORE"

    invoke-static {v9, v10}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    const-string v9, "android.intent.action.ADD_RECENET_IGNORE"

    invoke-virtual {v8, v9}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 145
    invoke-virtual {p1, v8}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 147
    const-string v9, "BootCompleteReceiver"

    const-string v10, "get ACTION_SIM_STATE_CHANGED - unInstall"

    invoke-static {v9, v10}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    invoke-virtual {v2, p1}, Lcom/android/stk/StkAppInstaller;->unInstall(Landroid/content/Context;)V

    .line 149
    if-eqz v3, :cond_4

    .line 150
    invoke-virtual {v3, v12}, Lcom/android/stk/StkAppService;->setUserAccessState(Z)V

    .line 161
    .end local v0           #SIMStatus:Ljava/lang/String;
    .end local v5           #bUnInstall:Z
    .end local v6           #bundle:Landroid/os/Bundle;
    .end local v8           #it:Landroid/content/Intent;
    :cond_4
    :goto_1
    const-string v9, "BootCompleteReceiver"

    const-string v10, "get ACTION_SIM_STATE_CHANGED  finish"

    invoke-static {v9, v10}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    const-string v9, "BootCompleteReceiver"

    const-string v10, "[onReceive]-"

    invoke-static {v9, v10}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    return-void

    .line 110
    .restart local v6       #bundle:Landroid/os/Bundle;
    .restart local v7       #enabled:Z
    .restart local v8       #it:Landroid/content/Intent;
    :cond_5
    const-string v9, "android.intent.action.REMOVE_RECENET_IGNORE"

    invoke-virtual {v8, v9}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 111
    invoke-virtual {p1, v8}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 112
    const-string v9, "BootCompleteReceiver"

    const-string v10, "[ACTION_AIRPLANE_MODE_CHANGED][start Install]+"

    invoke-static {v9, v10}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    invoke-virtual {v2, p1}, Lcom/android/stk/StkAppInstaller;->install(Landroid/content/Context;)V

    .line 115
    const-string v9, "BootCompleteReceiver"

    const-string v10, "[ACTION_AIRPLANE_MODE_CHANGED][start Install]-"

    invoke-static {v9, v10}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 153
    .end local v7           #enabled:Z
    .restart local v0       #SIMStatus:Ljava/lang/String;
    .restart local v5       #bUnInstall:Z
    :cond_6
    const-string v9, "BootCompleteReceiver"

    const-string v10, "REMOVE_RECENET_IGNORE"

    invoke-static {v9, v10}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    const-string v9, "android.intent.action.REMOVE_RECENET_IGNORE"

    invoke-virtual {v8, v9}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 155
    invoke-virtual {p1, v8}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 157
    const-string v9, "BootCompleteReceiver"

    const-string v10, "get ACTION_SIM_STATE_CHANGED - install"

    invoke-static {v9, v10}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    invoke-virtual {v2, p1}, Lcom/android/stk/StkAppInstaller;->install(Landroid/content/Context;)V

    goto :goto_1
.end method
