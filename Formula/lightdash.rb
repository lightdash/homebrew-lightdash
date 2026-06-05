class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3103.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3103.0/lightdash-cli-0.3103.0-macos-arm64.tar.gz"
      sha256 "85f8b9d2444041fbf553715720815924ad32537c758b1dd1d8189b86166c6f49"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3103.0/lightdash-cli-0.3103.0-macos-x64.tar.gz"
      sha256 "fdf83849f7fcbfea8ed74dec36f7f9a99c8216f46ef4f644d4febc7770103522"
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
