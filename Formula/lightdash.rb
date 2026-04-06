class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2724.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2724.4/lightdash-cli-0.2724.4-macos-arm64.tar.gz"
      sha256 "09b0bdcc2a037a2142a48eeda32b2034ec33663f19eb7db8448bfd73375b2aaa"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2724.4/lightdash-cli-0.2724.4-macos-x64.tar.gz"
      sha256 "94773f1681214411f984cd6089d9707666f43e10fac9ee9480c0583c9e89f535"
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
