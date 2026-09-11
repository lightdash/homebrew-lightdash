class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.195.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.195.2/lightdash-cli-2.195.2-macos-arm64.tar.gz"
      sha256 "1bb493af3c01a6820acec833014e85180470d432a35e0500d75a3fb84e231ab7"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.195.2/lightdash-cli-2.195.2-macos-x64.tar.gz"
      sha256 "a58cf80fed5e0125d34bbf67229e3f7e1b871093361f8a2fbca29e4a091c5695"
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
