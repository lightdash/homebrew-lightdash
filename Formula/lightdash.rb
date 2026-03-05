class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2574.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2574.0/lightdash-cli-0.2574.0-macos-arm64.tar.gz"
      sha256 "45db0a2948328dc47f09b381d3191880e792c7de179448d65555f014ddf3255a"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2574.0/lightdash-cli-0.2574.0-macos-x64.tar.gz"
      sha256 "80b78582fbfd20cd66d9584b39697096b62d40b8ff15c3d4c73568080f2b0edf"
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
