class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3189.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3189.0/lightdash-cli-0.3189.0-macos-arm64.tar.gz"
      sha256 "848ae1492be33f13b872d0daec5b44a02d89bbf5da179a2561d4e675a8021642"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3189.0/lightdash-cli-0.3189.0-macos-x64.tar.gz"
      sha256 "39b3b911d5da5643bffc3ee1bbc14bf86db74f2af19c4b399d49f6e0b50be3df"
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
