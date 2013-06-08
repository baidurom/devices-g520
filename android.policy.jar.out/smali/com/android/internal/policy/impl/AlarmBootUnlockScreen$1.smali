.class Lcom/android/internal/policy/impl/AlarmBootUnlockScreen$1;
.super Ljava/lang/Object;
.source "AlarmBootUnlockScreen.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/AlarmBootUnlockScreen;-><init>(Landroid/content/Context;Landroid/content/res/Configuration;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/KeyguardScreenCallback;Lcom/android/internal/widget/LockPatternUtils;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/AlarmBootUnlockScreen;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/AlarmBootUnlockScreen;)V
    .locals 0
    .parameter

    .prologue
    .line 106
    iput-object p1, p0, Lcom/android/internal/policy/impl/AlarmBootUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/AlarmBootUnlockScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 108
    iget-object v0, p0, Lcom/android/internal/policy/impl/AlarmBootUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/AlarmBootUnlockScreen;

    #calls: Lcom/android/internal/policy/impl/AlarmBootUnlockScreen;->snooze()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/AlarmBootUnlockScreen;->access$000(Lcom/android/internal/policy/impl/AlarmBootUnlockScreen;)V

    .line 109
    return-void
.end method
