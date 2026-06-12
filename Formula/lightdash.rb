class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3151.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3151.0/lightdash-cli-0.3151.0-macos-arm64.tar.gz"
      sha256 "9077c8ed206426be7dbeefc11e12dded775fc96e3f13fa2900598e54aba9adb7"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3151.0/lightdash-cli-0.3151.0-macos-x64.tar.gz"
      sha256 "7dba08393a8a9b8e1cb9d7947fa7a95ed410fd56fd26017edc02a46df6b0d204"
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
