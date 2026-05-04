# typed: false
# frozen_string_literal: true

class KubectlInventory < Formula
  desc "Complete Kubernetes namespace inventory with orphan and stuck finalizer detection"
  homepage "https://github.com/shahneil76/kubectl-inventory"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/shahneil76/kubectl-inventory/releases/download/v0.2.0/kubectl-inventory_0.2.0_darwin_arm64.tar.gz"
      sha256 "d3e749a7a1e532bc5ed065e60698cfe67be370194edf207b328aac2eead76a47"
    end
    on_intel do
      url "https://github.com/shahneil76/kubectl-inventory/releases/download/v0.2.0/kubectl-inventory_0.2.0_darwin_amd64.tar.gz"
      sha256 "a9b385410398fa1ce7026a33391522b290a53628489748920a1546c93ff4fdf6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/shahneil76/kubectl-inventory/releases/download/v0.2.0/kubectl-inventory_0.2.0_linux_arm64.tar.gz"
      sha256 "1e9321e6d9d1629711ffd5f1bbfcdfb6d3e58d30870be9bf1e53fec195c5baef"
    end
    on_intel do
      url "https://github.com/shahneil76/kubectl-inventory/releases/download/v0.2.0/kubectl-inventory_0.2.0_linux_amd64.tar.gz"
      sha256 "f4df4ce2f661284c5bfa5dceeee066848e3e2ced29495ad738bdd41558575e58"
    end
  end

  def install
    bin.install "kubectl-inventory"
  end

  test do
    assert_match "kubectl-inventory", shell_output("#{bin}/kubectl-inventory --help 2>&1")
  end
end
