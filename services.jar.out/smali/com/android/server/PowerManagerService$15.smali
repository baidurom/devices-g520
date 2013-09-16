.class Lcom/android/server/PowerManagerService$15;
.super Ljava/lang/Object;
.source "PowerManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/PowerManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/PowerManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/PowerManagerService;)V
    .locals 0
    .parameter

    .prologue
    .line 3357
    iput-object p1, p0, Lcom/android/server/PowerManagerService$15;->this$0:Lcom/android/server/PowerManagerService;
    
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 3295
    iget-object v0, p0, Lcom/android/server/PowerManagerService$15;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mScreenBrightnessAnimator:Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;
    invoke-static {v0}, Lcom/android/server/PowerManagerService;->access$9303(Lcom/android/server/PowerManagerService;)Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;

    move-result-object v0

    const/16 v1, 0xff

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->animateTo(III)V

    .line 3296
    return-void
.end method
