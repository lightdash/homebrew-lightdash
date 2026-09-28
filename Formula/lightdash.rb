class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.348.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.348.0/lightdash-cli-2.348.0-macos-arm64.tar.gz"
      sha256 "bedf43a61ef6f314a1c98018270732743861f1e03d310b5116524435d47df997"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.348.0/lightdash-cli-2.348.0-macos-x64.tar.gz"
      sha256 "0499fd35c4bea8f68934e1959bcddc842d6f364bd5a691eb1c9dbe26316e5ac6"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.348.0/lightdash-cli-2.348.0-linux-x64.tar.gz"
    sha256 "54f11e0671a9d4dd86e09b116b83572184ee0dae35cff847cbe32b2e9e0eab1e"

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
