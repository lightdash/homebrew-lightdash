class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2981.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2981.0/lightdash-cli-0.2981.0-macos-arm64.tar.gz"
      sha256 "9c1b00309cb5ef710de34362068937852b68dc631264a80eaf50c95782b13843"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2981.0/lightdash-cli-0.2981.0-macos-x64.tar.gz"
      sha256 "77d86bda0e3f197ae98612527521ab93baa002576e4fff4e3863c95ec9db72ae"
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
