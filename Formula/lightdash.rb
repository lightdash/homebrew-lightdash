class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.372.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.372.0/lightdash-cli-3.372.0-macos-arm64.tar.gz"
      sha256 "9e808474a3796f870f1a4a0c292d15340aca58afa4ddb54338bb84a24d5c63c8"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.372.0/lightdash-cli-3.372.0-macos-x64.tar.gz"
      sha256 "35a4864831a470a90ac24e19b8fbd41898d31833cff5c3a0fe9a95ad4848849b"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.372.0/lightdash-cli-3.372.0-linux-x64.tar.gz"
    sha256 "c623fae61cfd46dea8632875f3ef66a2f19f1ad3400e6c7cc5ec75d733711376"

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
