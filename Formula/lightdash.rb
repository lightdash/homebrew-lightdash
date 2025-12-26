class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2280.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2280.0/lightdash-cli-0.2280.0-macos-arm64.tar.gz"
      sha256 "7061026a45f638b28d16e03115c3cc149bce72df062e30eec85de4c04382518f"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2280.0/lightdash-cli-0.2280.0-macos-x64.tar.gz"
      sha256 "c954fa97cf22726e4afc66b7926a689094989f1763054159fc0d27f124f79118"
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
