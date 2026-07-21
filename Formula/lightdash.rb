class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3438.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3438.0/lightdash-cli-0.3438.0-macos-arm64.tar.gz"
      sha256 "eee8da6825871dc0fe42ce23964faa6aef821de2318a5184f1b20b3a02caaa59"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3438.0/lightdash-cli-0.3438.0-macos-x64.tar.gz"
      sha256 "3bcf9bd91c670214610a3633193f76f8e6efae91dfa54ca9246da148c0c0f8ce"
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
