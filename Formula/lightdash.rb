class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2471.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2471.0/lightdash-cli-0.2471.0-macos-arm64.tar.gz"
      sha256 "a8b86618e73f3d849b2d06e7eb0f265c2f6869f00efe7b4399589243e969c228"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2471.0/lightdash-cli-0.2471.0-macos-x64.tar.gz"
      sha256 "e192e3da5d20a6c485a6f581fe8d46bed8343101df46d160896fb278eaf88bf1"
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
