class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2925.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2925.1/lightdash-cli-0.2925.1-macos-arm64.tar.gz"
      sha256 "547f013ec158038bca802faa43124290e2e06b597c05754484fde3a1b9d28bb5"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2925.1/lightdash-cli-0.2925.1-macos-x64.tar.gz"
      sha256 "1ace789974f887b9459e6328b6147787166c583db230060fdf63b02df5a5afe8"
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
