class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.166.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.166.5/lightdash-cli-3.166.5-macos-arm64.tar.gz"
      sha256 "6b29368ffa429db0607b0efb1711d8cbc1ec0505092053e3b7251422d71a878f"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.166.5/lightdash-cli-3.166.5-macos-x64.tar.gz"
      sha256 "396d9a0f9cd7a83c0ad5c01496296cbdda7e8762b627b579b03d9985ab1b7e2e"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.166.5/lightdash-cli-3.166.5-linux-x64.tar.gz"
    sha256 "4313b394c122f79df40e7ea273e92def7bb075e7769900f70124663442754fc0"

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
