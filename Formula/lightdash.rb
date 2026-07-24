class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3473.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3473.0/lightdash-cli-0.3473.0-macos-arm64.tar.gz"
      sha256 "bf3f2083df8a5224436e14bd29f8b825bd12fe67f5a329cdcce6f4541a889282"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3473.0/lightdash-cli-0.3473.0-macos-x64.tar.gz"
      sha256 "edd395b979d555e0dfe1a88f848886b6ff489b4983f2871d62a94992cc4bc14f"
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
