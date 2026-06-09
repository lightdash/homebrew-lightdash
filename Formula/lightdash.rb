class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3113.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3113.1/lightdash-cli-0.3113.1-macos-arm64.tar.gz"
      sha256 "11482510aae5a19786d417a04c1fd7e494b8f0c868faaaacba7bda7ad8f3756f"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3113.1/lightdash-cli-0.3113.1-macos-x64.tar.gz"
      sha256 "e89fe847c6a9902fab54d150a58310d435cdfcbe2f3a7294706ab565be5ad8d0"
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
