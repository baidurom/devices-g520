.class Lcom/android/internal/policy/impl/DigitalClock$FormatChangeObserver;
.super Landroid/database/ContentObserver;
.source "DigitalClock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/DigitalClock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FormatChangeObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/DigitalClock;


# direct methods
.method public constructor <init>(Lcom/android/internal/policy/impl/DigitalClock;)V
    .locals 1
    .parameter

    .prologue
    .line 128
    iput-object p1, p0, Lcom/android/internal/policy/impl/DigitalClock$FormatChangeObserver;->this$0:Lcom/android/internal/policy/impl/DigitalClock;

    .line 129
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 130
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .parameter "selfChange"

    .prologue
    .line 133
    iget-object v0, p0, Lcom/android/internal/policy/impl/DigitalClock$FormatChangeObserver;->this$0:Lcom/android/internal/policy/impl/DigitalClock;

    #calls: Lcom/android/internal/policy/impl/DigitalClock;->setDateFormat()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/DigitalClock;->access$400(Lcom/android/internal/policy/impl/DigitalClock;)V

    .line 134
    iget-object v0, p0, Lcom/android/internal/policy/impl/DigitalClock$FormatChangeObserver;->this$0:Lcom/android/internal/policy/impl/DigitalClock;

    #calls: Lcom/android/internal/policy/impl/DigitalClock;->updateTime()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/DigitalClock;->access$200(Lcom/android/internal/policy/impl/DigitalClock;)V

    .line 135
    return-void
.end method
