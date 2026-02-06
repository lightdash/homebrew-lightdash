class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2436.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2436.3/lightdash-cli-0.2436.3-macos-arm64.tar.gz"
      sha256 "2bfc20c4a1f93122bf5c04970b18aa9e7b4b5dcbab8d53943bd0a5bf6317a15c"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2436.3/lightdash-cli-0.2436.3-macos-x64.tar.gz"
      sha256 "8df4c24a948943cce02870cba95802b6806e41b360cfe404f6125111f45e6dfb"
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
