class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2270.10"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2270.10/lightdash-cli-0.2270.10-macos-arm64.tar.gz"
      sha256 "458e303368e9074cb07d30f3ca4150c9fcb6b8ff7e3e23f311603563a8f0e445"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2270.10/lightdash-cli-0.2270.10-macos-x64.tar.gz"
      sha256 "972364c77e9df937a7f7785b30d632da78ccd94b48a664b230eb34b1bf6cd1c5"
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
