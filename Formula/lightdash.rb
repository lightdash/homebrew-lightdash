class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2229.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2229.2/lightdash-cli-0.2229.2-macos-arm64.tar.gz"
      sha256 "654091bd94a19ae6af765b870a4933ad81966fb8ea4f8c638810deea581aa61a"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2229.2/lightdash-cli-0.2229.2-macos-x64.tar.gz"
      sha256 "45c7bfa3b3cedfc6f066f1bb82dd19af7b648814c94a9753d101daab555b5f64"
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
