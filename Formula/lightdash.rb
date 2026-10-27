class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.72.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.72.0/lightdash-cli-3.72.0-macos-arm64.tar.gz"
      sha256 "8779fa68f4985a272f2325d5465b45f233e5f4fe3d7f50e941157ae3ac4e1e7d"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.72.0/lightdash-cli-3.72.0-macos-x64.tar.gz"
      sha256 "54d98736a29efd9609d99a2b9b9eec2181fe46c6525120a7376fdec13340d383"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.72.0/lightdash-cli-3.72.0-linux-x64.tar.gz"
    sha256 "1c11ec4e076f6cd4df47c25f81956d9e83c8f2f6edbb1b7cd08263deda76993b"

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
