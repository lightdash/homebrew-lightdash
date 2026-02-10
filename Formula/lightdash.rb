class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2446.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2446.1/lightdash-cli-0.2446.1-macos-arm64.tar.gz"
      sha256 "8b0fca60f5f9ff6c661118652f2bb15ee095bdbed799e73e2118a06cdcf98ffd"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2446.1/lightdash-cli-0.2446.1-macos-x64.tar.gz"
      sha256 "5b3cf1b2658135f7be7410545ff868b221cf1ad5ea2d8242932738232b5951f6"
    end
  end

  def install
    if Hardware::CPU.arm?
      bin.install "lightdash-macos-arm64" => "lightdash"
    else
      bin.install "lightdash-macos-x64" => "lightdash"
    end
  end

  test do
    system bin/"lightdash", "--version"
  end
end
