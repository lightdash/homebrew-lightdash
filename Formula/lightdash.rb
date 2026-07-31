class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.48.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.48.1/lightdash-cli-1.48.1-macos-arm64.tar.gz"
      sha256 "b99cd3170e94d21344a8a52713a881cb40775b94630a41bf1a167855cb96d8ed"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.48.1/lightdash-cli-1.48.1-macos-x64.tar.gz"
      sha256 "fbb4faa1e034630abd695f43bd48e31c4306fc80c1b169e4daad07b52ab50824"
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
