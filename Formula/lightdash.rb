class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.337.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.337.4/lightdash-cli-2.337.4-macos-arm64.tar.gz"
      sha256 "5e37e1c784b203630eb10f90d26cb0d7982d7c9b611c907a57d5633006b46b34"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.337.4/lightdash-cli-2.337.4-macos-x64.tar.gz"
      sha256 "8ce2c73198852d2e2201ce7ad08c5ba5e8743a43260a8699aff53087e96878bf"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.337.4/lightdash-cli-2.337.4-linux-x64.tar.gz"
    sha256 "44b031876d8049ba0059b976356edfcedc04d54ce91268cb68ae752eba878f05"

    depends_on arch: :x86_64
  end

  def install
    binary = Dir["lightdash-*"].first
    odie "No lightdash binary found in archive" if binary.nil?
    bin.install binary => "lightdash"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/lightdash --version")
  end
end
