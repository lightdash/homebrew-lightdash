class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3102.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3102.0/lightdash-cli-0.3102.0-macos-arm64.tar.gz"
      sha256 "b2777380938eb906fb3ceb30d62fa9d5d810a6523172b275146cab8d617ae9f6"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3102.0/lightdash-cli-0.3102.0-macos-x64.tar.gz"
      sha256 "dc77b7220780f141c3378ac8db6d94e3f6a934aa53d2504afc3af9be2889ef2e"
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
