class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2318.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2318.0/lightdash-cli-0.2318.0-macos-arm64.tar.gz"
      sha256 "c628a94f3e70580b78c3d79ce5ef37a2af6b6542d0df5f4c16a5c4079ee5dc95"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2318.0/lightdash-cli-0.2318.0-macos-x64.tar.gz"
      sha256 "f1c1773ada2f21c6a1007a933be2ab5256e8589ff089a9b7e1f29e46960cee33"
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
